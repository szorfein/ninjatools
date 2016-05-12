# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5


SRC_URI="https://github.com/LemonBoy/bar/archive/v${PV}.zip"
KEYWORDS="~amd64"
S="${WORKDIR}/bar-${PV}"

DESCRIPTION="Minimalist bar based on xcb, support UTF-8"
HOMEPAGE="https://github.com/LemonBoy/bar"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="x11-libs/libxcb
		>=dev-lang/perl-5"
RDEPEND="${DEPEND}"

DOCS="README.pod"

src_prepare() {
	sed -i -e 's/-Os//' Makefile || die "Sed failed"
}
