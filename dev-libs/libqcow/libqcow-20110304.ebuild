# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="2"

MY_P=${P/${PN}/${PN}-alpha}
DESCRIPTION="Library and tooling to support the QEMU Copy-On-Write (QCOW) image format"
HOMEPAGE="http://www.sourceforge.net/projects/libqcow"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~x64-macos ~x86-macos"
IUSE="unicode debug"

DEPEND="dev-libs/libuna
	dev-libs/libbfio"

src_configure() {
	econf	$(use_enable unicode wide-character-type) \
			$(use_enable debug verbose-output) \
			$(use_enable debug debug-output)

}

src_install() {
	emake install DESTDIR="${D}" || die "install failed"
	dodoc AUTHORS ChangeLog NEWS README
}
