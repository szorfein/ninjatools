# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7
MATERIAL="material-design-icons"

inherit font

DESCRIPTION="ttf font from Material design icons by google"
HOMEPAGE="https://github.com/google/material-design-icons"
SRC_URI="https://github.com/google/${MATERIAL}/releases/download/${PV}/${MATERIAL}-${PV}.zip -> ${P}.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MATERIAL}-${PV}/iconfont"
FONT_SUFFIX="ttf"
