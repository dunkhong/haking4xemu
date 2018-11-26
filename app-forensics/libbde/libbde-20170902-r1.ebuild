# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library and tools to support the BitLocker Drive Encryption (BDE) encrypted volumes."
HOMEPAGE="https://github.com/libyal/libbde/"

LIBYAL_PYLIB="pybde"
LIBYAL_RELEASE="alpha"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="${LIBYAL_IUSE} fuse threads python static debug"

DEPEND="${LIBYAL_DEPEND}
    dev-libs/libuna
    app-forensics/libbfio
    dev-libs/libcaes
    dev-libs/libcdata
    dev-libs/libcerror
    dev-libs/libcfile
    dev-libs/libclocale
    dev-libs/libcnotify
    dev-libs/libcpath
    dev-libs/libcsplit
    threads? ( dev-libs/libcthreads )
    fuse? ( sys-fs/fuse )
    dev-libs/libfcache
    dev-libs/libfdata
    dev-libs/libfdatetime
    dev-libs/libfguid
    dev-libs/libfvalue
    dev-libs/libhmac"
RDEPEND="${DEPEND}"
