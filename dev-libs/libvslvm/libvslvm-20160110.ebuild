# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

PYHTON_COMPAT=( pyhton2_7 )

DESCRIPTION="Library and tools to access the Linux Logical Volume Manager (LVM) volume system format"
HOMEPAGE="https://github.com/libyal/libvslvm"
LIBYAL_RELEASE="experimental"
LIBYAL_PYLIB="pyvslvm"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug iconv nls static-libs python threads"

DEPEND="${LIBYAL_DEPEND}
	"
RDEPEND="${DEPEND}"

src_configure() {
	# these all also depend on libuna, introducing circular dependencies.
	# Use the local copy for this core lib.
	local libyal_econf=(
		"--with-libcstring=no"
		"--with-libcerror=no"
		"--with-libcdatetime=no"
		"--with-libclocale=no"
		"--with-libcnotify=no"
		"--with-libcfile=no"
		"--with-libcsystem=no"
	)
	libyal-r1_src_configure
}
