# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 eutils git-r3

DESCRIPTION="Didier Stevens Suite"
HOMEPAGE="https://blog.didierstevens.com/didier-stevens-suite/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/dunkhong/DidierStevensSuite.git"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
