# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit autotools eutils

DESCRIPTION="File carver with plugin validators"
HOMEPAGE="http://www.afflib.org/"
SRC_URI="http://www.afflib.org/downloads/${P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS=""

DEPEND="dev-libs/openssl"
RDEPEND=${DEPEND}

src_install() {
	emake install DESTDIR="${D}"
	dodoc ChangeLog README TODO
}
