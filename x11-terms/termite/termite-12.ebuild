# By eroen, 2013-2016
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.

EAPI=6

inherit eutils toolchain-funcs versionator
if [[ 9999 == $PV ]]; then
	inherit git-r3
else
	# Submodules :-(
	#SRC_URI="https://github.com/thestinger/termite/archive/v$PV.tar.gz -> $P.tar.gz"
	inherit git-r3
	EGIT_COMMIT=v$PV
	KEYWORDS="~amd64 ~x86"
fi

DESCRIPTION="A keyboard-centric VTE-based terminal"
HOMEPAGE="https://github.com/thestinger/termite"
EGIT_REPO_URI="git://github.com/thestinger/termite.git
	http://github.com/thestinger/termite.git
	https://github.com/thestinger/termite.git"

LICENSE="LGPL-2+ MIT"
SLOT="0"
IUSE=""

LIBDEPEND=">=x11-libs/gtk+-3.0
	>=x11-libs/vte-0.43.2:2.91
	"
DEPEND="${LIBDEPEND}"
RDEPEND="${LIBDEPEND}"

src_prepare() {
	default
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
