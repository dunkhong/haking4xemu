# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library for plist formats"
HOMEPAGE="https://github.com/libyal/libfplist"
LIBYAL_RELEASE="experimental"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug iconv nls static-libs threads"

DEPEND="${LIBYAL_DEPEND}
	dev-libs/libcerror
	threads? ( dev-libs/libcthreads )
	dev-libs/libcdata
	dev-libs/libcnotify
	dev-libs/libfguid
	dev-libs/libfvalue
	dev-libs/libuna"
RDEPEND="${DEPEND}"
