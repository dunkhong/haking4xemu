# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

PYTHON_COMPAT=(python2_7)

inherit distutils-r1

DESCRIPTION="EFILTER is a general-purpose destructuring and search language implemented in Python"
HOMEPAGE="https://github.com/google/dotty/"
SRC_URI="https://pypi.python.org/packages/9f/48/82fd1254d70b5d7831ece84270cb99c178c0254e2568efad72c5ca2a31c7/efilter-1-$PV.tar.gz#md5=bc85430562de008ecec8b2410410bce7 -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/efilter-1-${PV}/"
