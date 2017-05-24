# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

MY_P=${P/_p/-}
DESCRIPTION="Module to read and work with Portable Executable (PE) files"
HOMEPAGE="http://code.google.com/p/pefile/"
SRC_URI="https://github.com/erocarrera/${PN}/archive/${MY_P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~x64-macos ~x86-macos"
IUSE=""

DEPEND=""

S="${WORKDIR}/${MY_P}"
