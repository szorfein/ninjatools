# By eroen, 2013-2016
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.

EAPI=6

inherit eutils toolchain-funcs versionator

UTIL_ECOMMIT="62faf9e46b8c4ab213ac42aaf6343dea9e2dfc1e"

DESCRIPTION="A keyboard-centric VTE-based terminal"
HOMEPAGE="https://github.com/thestinger/termite"
SRC_URI="
    https://github.com/thestinger/${PN}/archive/v${PV}.tar.gz
	https://github.com/thestinger/util/archive/${UTIL_ECOMMIT}.zip -> util-${UTIL_ECOMMIT}.zip
"

KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-2+ MIT"
SLOT="0"
IUSE=""

RDEPEND="dev-libs/libpcre2
	>=x11-libs/gtk+-3.0
	>=x11-libs/vte-ng-0.50.2"
DEPEND="${RDEPEND}"

pkg_pretend() {
	if ! version_is_at_least 4.7 $(gcc-version); then
		eerror "${PN} passes -std=c++11 to \${CXX} and requires a version"
		eerror "of gcc newer than 4.7.0"
	fi
}

pkg_setup() {
	# Makefile prepends -O3
	CXXFLAGS="-O0 ${CXXFLAGS}"
}

src_prepare() {
	default
	rm -rf "${S}"/util
	mv "${WORKDIR}"/util-${UTIL_ECOMMIT} "${S}"/util || die
	sed -e "s/^VERSION = .*$/VERSION = v${PV}/" \
		-i Makefile || die
}

src_compile() {
	emake LDFLAGS="${LDFLAGS}"
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
	dodoc README* config
}

pkg_postinst() {
	elog
	elog "Termite looks for a config file ~/.config/termite/config"
	elog "An example config can be found in ${EROOT}usr/share/doc/${PF}/"
}
