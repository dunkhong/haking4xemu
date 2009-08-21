# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-crypt/johntheripper/johntheripper-1.7.3.1.ebuild,v 1.9 2009/06/23 00:03:52 rich0 Exp $

EAPI=1
inherit eutils flag-o-matic toolchain-funcs pax-utils

JUMBO='all-5'
MPI='mpi10'

MY_PN="${PN/theripper/}"
MY_P="${MY_PN/theripper/}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="fast password cracker"
HOMEPAGE="http://www.openwall.com/john/"

SRC_URI="http://www.openwall.com/john/g/${MY_P}.tar.gz
	!minimal? ( ftp://ftp.openwall.com/john/contrib/${MY_P}-${JUMBO}.diff.gz )
	mpi? ( ftp://ftp.openwall.com/john/contrib/mpi/2009-bindshell/${MY_P}-${MPI}.patch.gz )"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 hppa ~mips ppc ~ppc64 sparc x86"
IUSE="mmx altivec sse2 custom-cflags -minimal -mpi"

# Seems a bit fussy with other MPI implementations.
RDEPEND="!minimal? ( >=dev-libs/openssl-0.9.7 )
	mpi? ( sys-cluster/openmpi )"
DEPEND="${RDEPEND}"

get_target() {
	if use x86 ; then
		if use sse2 ; then
			echo "linux-x86-sse2"
		elif use mmx ; then
			echo "linux-x86-mmx"
		else
			echo "linux-x86-any"
		fi
	elif use alpha ; then
		echo "linux-alpha"
	elif use sparc; then
		echo "linux-sparc"
	elif use amd64; then
		echo "linux-x86-64"
	elif use ppc64; then
		if use altivec; then
			echo "linux-ppc32-altivec"
		else
			echo "linux-ppc64"
		fi
		# linux-ppc64-altivec is slightly slower than linux-ppc32-altivec for most hash types.
		# as per the Makefile comments
	elif use ppc; then
		if use altivec; then
			echo "linux-ppc32-altivec"
		else
			echo "linux-ppc32"
		fi
	else
		echo "generic"
	fi
}

src_unpack() {
	unpack ${A}
	cd "${S}"
	PATCHLIST="stackdef.S"
	if use mpi ; then
		epatch "${WORKDIR}"/${MY_P}-${MPI}.patch
	fi
	if ! use minimal ; then
		epatch "${WORKDIR}"/${MY_P}-${JUMBO}.diff
		PATCHLIST="${PATCHLIST} ${JUMBO}-stackdef.S"
	fi
	PATCHLIST="${PATCHLIST} cflags mkdir-sandbox"

	cd "${S}/src"
	for p in ${PATCHLIST}; do
		epatch "${FILESDIR}/${P}-${p}.patch"
	done

	if ! use minimal ; then
		sed -e "s/LDFLAGS  *=  */override LDFLAGS += /" -e "/LDFLAGS/s/-s//" \
			-e "/LDFLAGS/s/-L[^ ]*//g" -e "/CFLAGS/s/-[IL][^ ]*//g" \
			-i Makefile || die "sed Makefile failed"
	fi
}

src_compile() {
	use custom-cflags || strip-flags
	append-flags -fPIC -fPIE
	append-ldflags -nopie

	CPP=$(tc-getCXX) CC=$(tc-getCC) AS=$(tc-getCC) LD=$(tc-getCC)
	use mpi && CPP=mpicxx CC=mpicc AS=mpicc LD=mpicc
	emake -C src/\
		CPP=${CPP} CC=${CC} AS=${AS} LD=${LD} \
		CFLAGS="-c -Wall ${CFLAGS} -DJOHN_SYSTEMWIDE -DJOHN_SYSTEMWIDE_HOME=\"\\\"${ROOT}/etc/john\\\"\" -DJOHN_SYSTEMWIDE_EXEC=\"\\\"${ROOT}/usr/libexec/john\\\"\"" \
		LDFLAGS="${LDFLAGS}" \
		OPT_NORMAL="" \
		$(get_target) \
		|| die "emake failed"
}

src_test() {
	cd "${S}/run"
	if  [ -f /etc/john/john.conf -o -f /etc/john/john.ini  ]; then
		# This requires that MPI is actually 100% online on your system, which might not
		# be the case, depending on which MPI implementation you are using.
		#if use mpi ; then
		#	mpirun -np 2 ./john --test || die 'self test failed'
		#else

		./john --test || die 'self test failed'
	else
		ewarn "selftest requires /etc/john/john.conf or /etc/john/john.ini"
	fi
}

src_install() {
	# executables
	dosbin run/john
	newsbin run/mailer john-mailer

	pax-mark -m "${D}"/usr/sbin/john

	dosym john /usr/sbin/unafs
	dosym john /usr/sbin/unique
	dosym john /usr/sbin/unshadow

	# jumbo-patch additions
	if ! use minimal ; then
		dosym john /usr/sbin/undrop
		dosbin run/calc_stat
		dosbin run/genmkvpwd
		dosbin run/mkvcalcproba
		insinto /etc/john
		doins run/genincstats.rb run/stats
		doins run/netscreen.py run/sap_prepare.pl
	fi

	# config files
	insinto /etc/john
	doins run/john.conf
	doins run/*.chr run/password.lst

	# documentation
	dodoc doc/*
}
