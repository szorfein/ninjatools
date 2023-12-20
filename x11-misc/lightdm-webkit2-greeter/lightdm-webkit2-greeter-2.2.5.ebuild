# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="LightDM greeter that uses Webkit2 for theming via HTML/Javascript."
HOMEPAGE="https://github.com/Antergos/web-greeter"
SRC_URI="https://github.com/Antergos/web-greeter/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND="x11-misc/lightdm net-libs/webkit-gtk sys-apps/accountsservice"
RDEPEND="${DEPEND} dev-libs/dbus-glib <=net-libs/webkit-gtk-2.40.5"
BDEPEND=""
S="${WORKDIR}/web-greeter-${PV}"

src_prepare() {
	default
}

src_configure() {
	BUILD_DIR="${S}/build"
	meson_src_configure
}

src_install() {
	meson_src_install
}

