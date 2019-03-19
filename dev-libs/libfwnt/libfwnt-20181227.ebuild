# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

PYTHON_COMPAT=( python2_7 )

DESCRIPTION="Library for Windows NT data types"
HOMEPAGE="https://github.com/libyal/libclocale"
LIBYAL_RELEASE="alpha"
LIBYAL_PYLIB="pyfwnt"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug iconv nls static-libs python threads"

DEPEND="${LIBYAL_DEPEND}
	dev-libs/libcstring
	dev-libs/libcerror
	dev-libs/libcthreads
	dev-libs/libcnotify
	dev-libs/libcdata"
RDEPEND="${DEPEND}"
