# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit gnome2 autotools

DESCRIPTION="An adaptive GTK+ theme based on Material Design Guidelines"
HOMEPAGE="https://github.com/adapta-project/adapta-gtk-theme"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${P}"

LICENSE="~*"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="mirror"

DEPEND="
	>=x11-libs/gdk-pixbuf-2.32.3
	>=dev-ruby/sass-3.4.21:3.4
	sys-process/parallel
	media-gfx/inkscape
	dev-cpp/cairomm[svg]
	dev-python/pycairo[svg]
	dev-libs/libxml2:2
"

RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
	gnome2_src_prepare
}

src_compile() {
	emake DESTDIR="${D}" || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
