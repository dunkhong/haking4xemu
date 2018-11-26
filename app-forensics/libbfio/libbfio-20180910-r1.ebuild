# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Library that provides basic file input/output abstraction"
HOMEPAGE="https://github.com/libyal/libbfio/"
LIBYAL_RELEASE="alpha"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="nls iconv threads unicode debug"
DEPEND="${LIBYAL_DEPEND}
	dev-libs/libclocale
	dev-libs/libcnotify
	dev-libs/libcpath
	dev-libs/libcsplit
	threads? ( dev-libs/libcthreads )
	dev-libs/libcdata
	dev-libs/libcfile
	dev-libs/libcerror
	dev-libs/libuna"
RDEPEND="${DEPEND}"

src_configure() {
    econf $(use_enable unicode wide-character-type)
}

