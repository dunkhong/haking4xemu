# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

LIBYAL_PYLIB="pyexe"
LIBYAL_RELEASE="experimental"

DESCRIPTION="Library and tooling to access the executable (EXE) format"
HOMEPAGE="https://github.com/libyal/libexe"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~x86"
IUSE="${LIBYAL_IUSE}"

DEPEND="${LIBYAL_DEPEND}
	dev-libs/libuna
	app-forensics/libbfio"
RDEPEND="${DEPEND}"
