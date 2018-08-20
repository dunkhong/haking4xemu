# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit distutils-r1

DESCRIPTION="Tooling for data type and structure management"
HOMEPAGE="https://github.com/libyal/dtfabric/wiki/Home"
SRC_URI="https://github.com/libyal/${PN}/releases/download/${PV}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-python/pyyaml[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
