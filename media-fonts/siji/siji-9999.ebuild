# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit font git-r3

DESCRIPTION="Siji is an iconic bitmap font based on the Stlarch font with additional glyphs."
HOMEPAGE="https://github.com/stark/siji"
EGIT_REPO_URI="https://github.com/stark/${PN}.git"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="plugins"

DEPEND="plugins? ( x11-apps/xfd )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}/pcf/"
FONT_S="${PN}"
FONT_SUFFIX="pcf"

pkg_preinst() {

	if use plugins ; then
		mv -f "${WORKDIR}/${P}/view.sh" "${PN}_view"
		dobin "${PN}_view"
	fi
}

pkg_postinst() {

	elog "If you're install ${PN} with plugins useflag"
	elog "u can view symbol with script rename siji_view"
	elog ""
	elog "If anything work, u need create /etc/X11/xorg.conf.d/15-fonts.conf and add that"
	elog ""
	elog 'Section "Files"'
	elog 'FontPath "/usr/share/fonts/siji"'
	elog "EndSection"
	elog ""
	elog "save and restart X"
	elog ""
	elog "U can use ${PN} like this with Lemonbar: "
    elog ""
	elog "lemonbar -p -f '-*-tamsyn-medium-r-normal-*-12-*-*-*-*-*-*-1' \ "
    elog "-f '-wuncon-siji-medium-r-normal--10-100-75-75-c-80-iso10646-1'"
    elog ""
	elog "Also see https://github.com/stark/siji"

}
