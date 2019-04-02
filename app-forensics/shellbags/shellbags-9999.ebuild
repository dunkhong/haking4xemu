# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 python3_6 )

inherit distutils-r1 eutils git-r3

DESCRIPTION="Cross-platform, open-source shellbag parser"
HOMEPAGE="http://www.williballenthin.com/forensics/shellbags/index.html"
SRC_URI=""
EGIT_REPO_URI="https://github.com/williballenthin/shellbags.git"

LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/six
	dev-python/python-registry
	dev-python/argparse"
RDEPEND="${DEPEND}"
