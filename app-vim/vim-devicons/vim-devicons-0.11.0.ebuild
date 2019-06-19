# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin

MY_P="${PN}-${PV}"

DESCRIPTION="Adds file type glyphs/icons to popular Vim plugins"
HOMEPAGE="https://github.com/ryanoasis/vim-devicons"
SRC_URI="https://github.com/ryanoasis/${PN}/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( CHANGELOG README )
