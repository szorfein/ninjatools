# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit font git-r3

DESCRIPTION="collection of pcf font Beep Dash Dweep and Marathonmod"
HOMEPAGE="https://github.com/daisukearamaki"
EGIT_REPO_URI="
	git://github.com/DaisukeAramaki/Dotfiles.git
	https://github.com/DaisukeAramaki/Dotfiles.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

S="${WORKDIR}/${P}/"
FONT_SUFFIX="pcf"

DOCS="README"

src_install() {
	local d
	for d in Beep Dash Dweep Marathonmod; do
		FONT_S="${S}"/$d
		font_src_install
	done
}
