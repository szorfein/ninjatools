# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

MY_PV="${PV}.c.2"

DESCRIPTION="improved improved screen locker - 'the ricing fork of i3lock'"
HOMEPAGE="https://github.com/PandorasFox/i3lock-color"
SRC_URI="https://github.com/PandorasFox/i3lock-color/archive/${MY_PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	x11-libs/libxcb
	x11-libs/xcb-util
	sys-libs/pam
	x11-libs/cairo
	media-libs/fontconfig
	x11-libs/libXcomposite
	x11-libs/libXinerama
	x11-libs/libXrandr
	dev-libs/libev
	x11-libs/libX11
	x11-libs/libxkbcommon
	media-libs/libjpeg-turbo
	x11-apps/xdpyinfo
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}.c.2"

src_prepare() {
	default
	sed -i -e 's:login:system-auth:g' pam/i3lock || die
	eautoreconf -fiv
}
