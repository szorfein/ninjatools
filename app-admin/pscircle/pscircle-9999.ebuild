# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="pscircle visualizes Linux processes in a form of radial tree"
HOMEPAGE="https://gitlab.com/mildlyparallel/pscircle"
EGIT_REPO_URI="${HOMEPAGE}"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="+X"
DEPEND="x11-libs/cairo"
RDEPEND="${DEPEND}
	media-libs/libpng
	X? ( x11-libs/libX11 )
"
