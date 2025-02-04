# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit systemd

DESCRIPTION="A small and secure static webserver"
HOMEPAGE="https://unix4lyfe.org/darkhttpd"
SRC_URI="https://unix4lyfe.org/${PN}/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

pkg_postinst() {
	enewuser darkhttp
	enewgroup darkhttp
}

src_install() {
	dobin ${PN}
	touch mimetypes
	doconfd mimetypes
	newconfd "${FILESDIR}/${PN}".confd ${PN}
	systemd_dounit "${FILESDIR}/${PN}".service
}
