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
    >=dev-python/binplist-1.0.3
    dev-python/bencode
    >=app-forensics/dfvfs-20181209
    >=app-forensics/dfdatetime-20180704
    >=app-forensics/dfwinreg-20180712
    app-forensics/libfsntfs
    >=dev-python/artifacts-20170818
    app-forensics/yara[python]
    dev-python/ipython
    app-forensics/libbde[python]
    app-forensics/libesedb[python]
    app-forensics/libevt[python]
    app-forensics/libevtx[python]
    app-forensics/libewf[python]
    dev-libs/libfwsi[python]
    >=app-forensics/liblnk-20130304[python]
    >=app-forensics/libmsiecf-20150314[python]
    >=app-forensics/libolecf-20151223[python]
    app-forensics/libqcow[python]
    >=app-forensics/libregf-20130315[python]
    app-forensics/libsmdev[python]
    app-forensics/libsmraw[python]
    app-forensics/libvhdi[python]
    app-forensics/libvmdk[python]
    app-forensics/libvshadow[python]
    app-forensics/libscca[python]
    dev-libs/protobuf
    dev-python/pefile
    dev-python/pyparsing
    dev-python/python-dateutil
    dev-python/dpkt
    dev-python/psutil
    dev-python/six
    app-forensics/pytsk
    >=dev-python/pyyaml-3.10
    dev-python/efilter
    =dev-python/construct-2.5.3
    dev-python/yara-python
    dev-python/pytz
	>=dev-python/xlsxwriter-0.9.3
	dev-python/backports-lzma
	>=dev-python/certifi-2016.9.26
	>=dev-python/chardet-2.0.1
	>=app-forensics/dtfabric-20181128
	>=dev-python/elasticsearch-py-6.0.0
	>=dev-python/future-0.16.0
	>=dev-python/idna-2.5
	app-forensics/libfsapfs[python]
	app-forensics/libfvde[python]
	app-forensics/libfwnt[python]
	app-forensics/libsigscan[python]
	app-forensics/libvslvm[python]
	>=dev-python/lz4-0.10.0
	>=dev-python/pycrypto-2.6
	>=dev-python/pyzmq-2.1.11
	>=dev-python/requests-2.18.0
	>=dev-python/urllib3-1.21.1"
RDEPEND="${DEPEND}"
