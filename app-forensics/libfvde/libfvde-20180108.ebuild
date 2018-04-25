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
IUSE="debug nls unicode python"

DEPEND="
	nls? (
		virtual/libintl
		virtual/libiconv
	)
	sys-fs/fuse
	dev-libs/libxml2
	dev-libs/libuna
	app-forensics/libbfio
	dev-libs/openssl"
RDEPEND="${DEPEND}"
