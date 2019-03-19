# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit versionator autotools-utils python-single-r1

MY_DATE="$(get_version_component_range 1)"

DESCRIPTION="Library and tools to access the Linux Logical Volume Manager (LVM) volume system format"
HOMEPAGE="https://github.com/libyal/libvslvm/"
SRC_URI="https://github.com/libyal/${PN}/releases/download/${MY_DATE}/${PN}-experimental-${MY_DATE}.tar.gz"

LICENSE="LGPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-macos ~x64-macos"
IUSE="debug python nls unicode threads"
REQUIRED_USE="python? ( ${PYTHON_REQUIRED_USE} )"

DEPEND="
        dev-libs/libuna
        dev-libs/libcdata
        dev-libs/libcerror
        dev-libs/libcfile
        dev-libs/libclocale
        dev-libs/libcnotify
        dev-libs/libcpath
        dev-libs/libcsplit
        threads? ( dev-libs/libcthreads )
        dev-libs/libfcache
        dev-libs/libfdata
        dev-libs/libfvalue"

RDEPEND="${DEPEND}"

AUTOTOOLS_IN_SOURCE_BUILD=1

pkg_setup() {
	use python && python-single-r1_pkg_setup
}

src_configure() {
	local myeconfargs=(
		$(use_enable nls)
		$(use_with nls libiconv-prefix)
		$(use_with nls libintl-prefix)
		$(use_enable unicode wide-character-type)
		$(use_enable debug debug-output)
		$(use_enable debug verbose-output)
		$(use_enable python)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
	if use python; then
		emake -C pyvslvm
	fi
}

src_install() {
	autotools-utils_src_install
	if use python; then
		emake -C pyvslvm DESTDIR="${D}" install
	fi
}
