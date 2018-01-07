# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="The Heroku CLI is used to manage Heroku apps from the command line"
HOMEPAGE="https://github.com/heroku"
SRC_URI="https://github.com/heroku/cli/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="net-libs/nodejs"
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
