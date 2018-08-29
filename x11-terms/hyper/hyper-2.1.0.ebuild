# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit gnome2-utils unpacker

DESCRIPTION="A terminal built on web technologies"
HOMEPAGE="https://github.com/zeit/hyper"
SRC_URI="https://github.com/zeit/${PN}/releases/download/2.1.0-canary.2/${PN}_2.1.0-canary.2_amd64.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S=${WORKDIR}

src_unpack() {
    unpack_deb ${A}
}

src_prepare() {
    iconv -c -t UTF-8 usr/share/applications/${PN}.desktop > "${T}"/${PN}.desktop || die
	mv "${T}"/${PN}.desktop usr/share/applications/${PN}.desktop || die

	mv usr/share/doc/${PN} usr/share/doc/${PF} || die
	chmod 0755 usr/share/doc/${PF} || die
	default
}

src_install() {
    mv * "${D}" || die
	dosym /opt/Hyper/${PN} /usr/bin/${PN}
}

pkg_postrm() {
    gnome2_icon_cache_update
}

pkg_postinst() {
    gnome2_icon_cache_update
}
