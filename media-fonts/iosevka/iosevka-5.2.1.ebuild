# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit font

DESCRIPTION="ttf font based on PragmaticPro"
HOMEPAGE=""
SRC_URI="https://github.com/be5invis/Iosevka/releases/download/v${PV}/ttf-${PN}-term-${PV}.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"
FONT_SUFFIX="ttf"
