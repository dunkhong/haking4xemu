# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library and tools to access the Windows Shortcut File (LNK) Format"
HOMEPAGE="https://github.com/libyal/liblnk/"
LIBYAL_RELEASE="alpha"
LIBYAL_PYLIB="pylnk"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="${LIBYAL_IUSE}"

DEPEND="${LIBYAL_DEPEND}
	dev-libs/libcstring
	dev-libs/libcerror
	dev-libs/libcthreads
	dev-libs/libcdata
	dev-libs/libclocale
	dev-libs/libcnotify
	dev-libs/libcsplit
	dev-libs/libuna
	dev-libs/libcfile
	dev-libs/libcpath
	app-forensics/libbfio
	dev-libs/libfdatetime
	dev-libs/libfguid
	dev-libs/libfole
	dev-libs/libfwps
	dev-libs/libfwsi
	dev-libs/libcsystem"