# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit autotools

EAPI="2"

MY_PV=${PV/_p/-r}
DESCRIPTION="Patched version of dd with features intended for forensic acquisition of data"
HOMEPAGE="http://dc3dd.sourceforge.net"
SRC_URI="mirror://sourceforge/dc3dd/${PN}-${MY_PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls"

S="${WORKDIR}/${PN}-${MY_PV}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf $(use_enable nls) --enable-hdparm || die "econf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
	dodoc README ChangeLog
}