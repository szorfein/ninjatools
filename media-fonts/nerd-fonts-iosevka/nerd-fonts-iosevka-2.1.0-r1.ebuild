# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit font

DESCRIPTION="Patched font including powerline symbol and more"
HOMEPAGE="https://github.com/ryanoasis/nerd-fonts"
SRC_URI="https://github.com/ryanoasis/nerd-fonts/releases/download/v${PV}/Iosevka.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttf"
FONT_PN="Iosevka"

src_prepare() {
	# Removing windows comptatible fonts
	find "${S}" -name '*Windows*' -delete
	default
}
