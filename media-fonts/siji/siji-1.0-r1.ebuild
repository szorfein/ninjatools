# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit font

DESCRIPTION="Siji is an iconic bitmap font based on the Stlarch font with additional glyphs."
HOMEPAGE="https://github.com/stark/siji"
SRC_URI="https://github.com/stark/siji/archive/master.zip -> ${P}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${PN}-master/pcf/"
FONT_S="${PN}"
FONT_SUFFIX="pcf"

pkg_postinst() {

	elog "U can use like this with Lemonbar: "
    elog ""
	elog "lemonbar -p -f '-*-tamsyn-medium-r-normal-*-12-*-*-*-*-*-*-1' \ "
    elog "-f '-wuncon-siji-medium-r-normal--10-100-75-75-c-80-iso10646-1'"
    elog ""
	elog "Also see https://github.com/stark/siji"

}
