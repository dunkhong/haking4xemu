# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5

DESCRIPTION="Library and tooling to access the Windows Event Log (EVT) format"
HOMEPAGE="https://github.com/libyal/libevt"
LIBYAL_RELEASE="alpha"
LIBYAL_PYLIB="pyevt"

inherit libyal-r1

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="${LIBYAL_IUSE}"

DEPEND="${LIBYAL_DEPEND}"
RDEPEND="${DEPEND}"
