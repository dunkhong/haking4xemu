# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit versionator distutils-r1

DESCRIPTION="A tool designed to extract timestamps from various files found on a typical computer system(s) and aggregate them."
HOMEPAGE="https://github.com/log2timeline/plaso/"
SRC_URI="https://github.com/log2timeline/plaso/releases/download/${PV}/plaso-${PV}.tar.gz"

LICENSE="Apache-2"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="${PYTHON_DEPS}
	dev-python/hachoir-core
	dev-python/hachoir-parser
	app-misc/hachoir-metadata
	dev-python/binplist
	dev-python/bencode
	app-forensics/dfvfs
	app-forensics/dfdatetime[python]
	app-forensics/dfwinreg[python]
	app-forensics/fsntfs[python]
	app-forensics/artifacts[python]
	app-forensics/yara[python]
	dev-python/ipython
	app-forensics/libbde[python]
	app-forensics/libesedb[python]
	app-forensics/libevt[python]
	app-forensics/libevtx[python]
	app-forensics/libewf[python]
	dev-libs/libfwsi[python]
	>=app-forensics/liblnk-20130304[python]
	>=app-forensics/libmsiecf-20130317[python]
	>=app-forensics/libolecf-20131012[python]
	app-forensics/libqcow[python]
	>=app-forensics/libregf-20130716[python]
	app-forensics/libsmdev[python]
	app-forensics/libsmraw[python]
	app-forensics/libvhdi[python]
	app-forensics/libvmdk[python]
	app-forensics/libvshadow[python]
	app-forensics/libscca[python]
	dev-libs/protobuf[python]
	dev-python/pefile
	dev-python/pyparsing
	dev-python/python-dateutil
	dev-python/dpkt
	dev-python/psutil
	dev-python/six
	app-forensics/pytsk
	dev-python/pyyaml
	dev-python/efilter
	=dev-python/construct-2.5.3
	dev-python/yara-python
	dev-python/pytz"
RDEPEND="${DEPEND}"
