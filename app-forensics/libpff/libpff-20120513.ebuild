# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

MY_P=${P/${PN}/${PN}-alpha}
DESCRIPTION="Library and tools to access the PFF (Personal Folder File) format, used in PST and OST"
HOMEPAGE="http://www.sourceforge.net/projects/libpff"
SRC_URI="mirror://sourceforge/${PN}/${PN}-alpha/${MY_P}/${MY_P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~x64-macos ~x86-macos"
IUSE="debug java nls python unicode"

DEPEND="nls? ( virtual/libiconv
			virtual/libintl )
		unicode? ( dev-libs/libuna )
		python? ( dev-lang/python )
		java? ( virtual/jdk )
		dev-libs/libuna
		dev-libs/libbfio"

src_configure() {
	econf --disable-rpath \
		$(use_enable java) \
		$(use_enable nls) \
		$(use_with nls libiconv-prefix) \
		$(use_with nls libintl-prefix) \
		$(use_enable unicode wide-character-type) \
		$(use_enable debug debug-output) \
		$(use_enable debug verbose-output) \
		$(use_enable python)
}
