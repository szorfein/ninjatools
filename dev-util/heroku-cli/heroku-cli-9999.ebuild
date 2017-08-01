# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

MY_P="heroku"

DESCRIPTION="heroku-cli for gentoo"
HOMEPAGE="https://heroku.com"
SRC_URI="https://cli-assets.heroku.com/${PN}/channels/stable/${PN}-linux-x64.tar.gz -> ${MY_P}.tar.gz"

S="${WORKDIR}/${PN}"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

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
