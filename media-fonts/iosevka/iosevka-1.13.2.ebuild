# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit font

DESCRIPTION="ttf font based on PragmaticPro"
HOMEPAGE=""
SRC_URI="https://github.com/be5invis/Iosevka/releases/download/v${PV}/${PN}-term-ss10-${PV}.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/ttf"
FONT_SUFFIX="ttf"

pkg_postinst() {
	ewarn "for termite, u can try in config file"
	ewarn "font = Iosevka Term Medium 9"
	ewarn "You can test with fc-match"
	ewarn "fc-match Iosevka\ Term\ Medium"
}
