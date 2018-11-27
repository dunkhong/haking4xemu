# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

DESCRIPTION="Library and tools for reading FileVault Drive Encryption (FVDE) encrypted volumes."
HOMEPAGE="https://github.com/libyal/libfvde/"
LIBYAL_RELEASE="experimental"
LIBYAL_PYLIB="pyfvde"

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
