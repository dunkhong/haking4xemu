# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library and tools to access the Windows Prefetch File (SCCA) format."
HOMEPAGE="https://github.com/libyal/libscca"
LIBYAL_RELEASE="alpha"
LIBYAL_PYLIB="pyscca"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="${LIBYAL_IUSE}"

DEPEND="${LIBYAL_DEPEND}
	sys-fs/fuse
	sys-libs/zlib
	dev-libs/libuna
	app-forensics/libbfio"
RDEPEND="${DEPEND}"
