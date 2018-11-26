# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library and tools to access the Extensible Storage Engine (ESE) Database File (EDB) format"
HOMEPAGE="https://github.com/libyal/libesedb/"
LIBYAL_RELEASE="experimental"
LIBYAL_PYLIB="pyesedb"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="${LIBYAL_IUSE} python threads debug nls iconv unicode static"

DEPEND="${LIBYAL_DEPEND}
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
    dev-libs/libfdatetime
    dev-libs/libfguid
    dev-libs/libfmapi
    dev-libs/libfvalue
    dev-libs/libfwnt
    dev-libs/libmapidb
    dev-libs/libuna
    app-forensics/libbfio"
RDEPEND="${DEPEND}"
