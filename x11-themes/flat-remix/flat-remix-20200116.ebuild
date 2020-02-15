# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome2-utils

DESCRIPTION="A flat theme with transparent elements"
HOMEPAGE="https://github.com/daniruiz/flat-remix"
SRC_URI="https://github.com/daniruiz/flat-remix/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+blue +green +red +yellow"
REQUIRED_USE="|| ( blue green red yellow )"

src_compile() { :; }

src_install() {
	insinto /usr/share/icons
	use blue   && doins -r Flat-Remix-Blue*
	use green  && doins -r Flat-Remix-Green*
	use red    && doins -r Flat-Remix-Red*
	use yellow && doins -r Flat-Remix-Yellow*

}

pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
