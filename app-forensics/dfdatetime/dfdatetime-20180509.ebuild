# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: schism $

EAPI=5
DISTUTILS_IN_SOURCE_BUILD=1
DISTUTILS_SINGLE_IMPL=1
PYTHON_COMPAT=( python2_7 )

inherit versionator distutils-r1

MY_DATE="$(get_version_component_range 1)"

DESCRIPTION="Digital Forensics date and time, provides date and time objects to preserve accuracy and precision."
HOMEPAGE="https://github.com/log2timeline/dfdatetime"
SRC_URI="https://github.com/log2timeline/${PN}/releases/download/${MY_DATE}/${PN}-${MY_DATE}.tar.gz"

LICENSE="Apache-2"
SLOT="0"
KEYWORDS="-*"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="${PYTHON_DEPS}
	dev-python/six
	dev-libs/protobuf
	app-forensics/sleuthkit
	app-forensics/pytsk
	app-forensics/libbde[${PYTHON_USEDEP}]
	app-forensics/libewf[${PYTHON_USEDEP}]
	app-forensics/libqcow[${PYTHON_USEDEP}]
	app-forensics/libsigscan[${PYTHON_USEDEP}]
	app-forensics/libsmdev[${PYTHON_USEDEP}]
	app-forensics/libsmraw[${PYTHON_USEDEP}]
	app-forensics/libvhdi[${PYTHON_USEDEP}]
	app-forensics/libvmdk[${PYTHON_USEDEP}]
	app-forensics/libvshadow[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
