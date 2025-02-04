# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome2 meson git-r3

DESCRIPTION="Paper is an icon theme for GTK based desktops and fits perfectly the paper-gtk-theme"
HOMEPAGE="https://github.com/snwh/paper-icon-theme"
SRC_URI=""
EGIT_REPO_URI="https://github.com/snwh/paper-icon-theme.git"

LICENSE="CC-BY-SA-4.0"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	gnome2_src_prepare
	find Paper* -type f -perm /111 -execdir fperms 0644 {} +
}
