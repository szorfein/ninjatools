# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="ttf font based on firamono"
HOMEPAGE="https::/github;com/tonsky/FiraCode"
SRC_URI="https://github.com/tonsky/FiraCode/releases/download/${PV}/FiraCode_${PV}.zip -> ${P}.zip"

LICENSE="SIL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/ttf/
FONT_SUFFIX="ttf"
