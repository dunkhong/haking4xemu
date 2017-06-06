# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-forensics/sleuthkit/sleuthkit-4.1.3.ebuild,v 1.1 2014/01/31 08:17:35 radhermit Exp $

EAPI=5
AUTOTOOLS_AUTORECONF=1
AUTOTOOLS_IN_SOURCE_BUILD=1
#WANT_ANT_TASKS="ant-core ant-ivy ant-junit"

inherit java-pkg-opt-2 java-ant-2 autotools-utils flag-o-matic

DESCRIPTION="A collection of file system and media management forensic analysis tools"
HOMEPAGE="http://www.sleuthkit.org/sleuthkit/"
SRC_URI="https://github.com/sleuthkit/sleuthkit/releases/download/sleuthkit-${PV}/sleuthkit-${PV}.tar.gz"

LICENSE="GPL-2 IBM"
SLOT="0/10" # subslot = major soname version
KEYWORDS="~amd64 ~hppa ~ppc ~x86 ~x86-macos ~x64-macos"
IUSE="aff ewf java"

append-flags "-std=c99 -D_BSD_SOURCE"

DEPEND="dev-db/sqlite:3
	ewf? ( app-forensics/libewf )
	aff? ( app-forensics/afflib )
	java? ( >=virtual/jdk-1.6 )
	sys-libs/zlib"
RDEPEND="${DEPEND}
	dev-perl/Date-Manip"

DOCS=( NEWS.txt )

PATCHES=(
	${FILESDIR}/sleuthkit-${PV}-ewf_c.patch
)

src_configure() {
	local myeconfargs=(
		$(use_with aff afflib)
		$(use_with ewf libewf)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
	if use java; then
		cd bindings/java
		eant
	fi
}
