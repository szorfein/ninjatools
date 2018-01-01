# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Tall, condensed, bitmap font for geeks"
HOMEPAGE="https://github.com/NerdyPepper/scientifica"
SRC_URI="https://raw.githubusercontent.com/NerdyPepper/${PN}/master/${P}.bdf"

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm ia64 ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
FONT_SUFFIX="bdf"
S="${WORKDIR}/${PN}"
FONT_S="${S}"

src_unpack() {
	install -dm755 "${S}"
	cp "${S}"/../../distdir/${P}.bdf "${S}/${PN}.bdf"
}
