# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Implementation of the EWF (SMART and EnCase) image format"
HOMEPAGE="https://github.com/libyal/libewf/"
LIBYAL_RELEASE="experimental"
LIBYAL_PYLIB="pyewf"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0/2"
KEYWORDS="~amd64 ~hppa ~ppc ~x86"
IUSE="${LIBYAL_IUSE} fuse uuid bzip2 python threads static"

DEPEND="${LIBYAL_DEPEND}
	fuse? ( sys-fs/fuse )
	uuid? ( || (
			>=sys-apps/util-linux-2.16
			<=sys-libs/e2fsprogs-libs-1.41.8
			sys-darwin/libsystem
		) )
	bzip2? ( app-arch/bzip2 )
	dev-libs/libcaes
	dev-libs/libcdatetime
	dev-libs/libcerror
	dev-libs/libcfile
	dev-libs/libclocale
	dev-libs/libcnotify
	dev-libs/libcdata
	threads? ( dev-libs/libcthreads )
	dev-libs/libcpath
	dev-libs/libcsplit
	dev-libs/libfcache
	dev-libs/libfdata
	dev-libs/libfguid
	dev-libs/libfvalue
	dev-libs/libhmac
	dev-libs/libuna
	app-forensics/libbfio
	app-forensics/libodraw
	app-forensics/libsmdev
	app-forensics/libsmraw"
RDEPEND="${DEPEND}"

DOCS=( AUTHORS ChangeLog NEWS README )

#PATCHES=( "${FILESDIR}"/${P}-libbfio_include.patch )

src_configure() {
	local libyal_econf=(
	)
	libyal-r1_src_configure
}
