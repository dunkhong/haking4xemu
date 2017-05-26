# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="A Python module for creating Excel XLSX files."
HOMEPAGE="ihttps://github.com/jmcnamara/XlsxWriter"
SRC_URI="https://github.com/jmcnamara/${PN}/archive/RELEASE_${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

IUSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"

DEPEND=""
RDEPEND="${DEPEND}
		"
S="${WORKDIR}/${PN}-RELEASE_${PV}"
