# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library and tools to access the Apple File System (APFS)"
HOMEPAGE="https://github.com/libyal/libfsapfs/"

LIBYAL_PYLIB="pyfsapfs"
LIBYAL_RELEASE="experimental"

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

src_prepare() {
	epatch ${FILESDIR}/${P}.patch

	libyal-r1_src_prepare
}

