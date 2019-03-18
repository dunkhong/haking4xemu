# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 versionator

MY_DATE="$(get_version_component_range 1)"

DESCRIPTION="ForensicArtifacts.com Artifact Repository"
HOMEPAGE="https://github.com/ForensicArtifacts/artifacts"
SRC_URI="https://github.com/ForensicArtifacts/${PN}/releases/download/${MY_DATE}/${PN}-${MY_DATE}.tar.gz"

IUSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"

DEPEND=""
RDEPEND="${DEPEND}
		"
