# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Tall, condensed, bitmap font for geeks"
HOMEPAGE="https://github.com/NerdyPepper/scientifica"
SRC_URI="https://github.com/NerdyPepper/${PN}/releases/download/v${PV}/${PN}.tar"

LICENSE=""
SLOT="0"
KEYWORDS="alpha amd64 arm ia64 ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
FONT_SUFFIX="bdf"
S="${WORKDIR}/${PN}/bdf"
FONT_S="${S}"
FONT_CONF=( ${FILESDIR}/75-yes-scientifica.conf )
