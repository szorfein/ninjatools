# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
P_VERSION="47054d2"

# get last version here https://cli-assets.heroku.com/heroku-cli/channels/stable/version
DESCRIPTION="The Heroku CLI is used to manage Heroku apps from the command line"
HOMEPAGE="https://github.com/heroku"
SRC_URI="https://cli-assets.heroku.com/${PN}/channels/stable/${PN}-v${PV}-${P_VERSION}-linux-x64.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack ${A}
	cd "${WORKDIR}"
	for i in $(ls); do 
		mv "${i}" "${PN}"
	done
}

src_install() {
	dodir /usr/local/lib
	dodir /usr/local/bin
	mv ${WORKDIR}/${PN} "${ED}"/usr/local/lib/heroku
	dosym /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku
}

pkg_postinst() {
	ewarn "For gentoo-hardened and PAX, you need disable memory flag" 
	ewarn "paxctl-ng -m /usr/local/lib64/heroku/bin/node"
}
