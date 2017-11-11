# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit linux-info autotools

DESCRIPTION="Console-based Audio Visualizer for ALSA (=CAVA)"
HOMEPAGE="https://github.com/karlstav/cava"
SRC_URI="https://github.com/karlstav/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="alsa pulseaudio +ncurses"

CDEPEND="
	alsa? ( media-libs/alsa-lib )
	pulseaudio? ( media-sound/pulseaudio )
"

RDEPEND="
	${CDEPEND}
	>=sci-libs/fftw-3
	sys-libs/ncurses
	<dev-libs/iniparser-4
"

DEPEND="${CDEPEND}"

pkg_pretend() {
	if use alsa && use pulseaudio ; then
		ewarn "You have enabled both alsa and pulseaudio, but only"
		ewarn "one provider can be active, Using alsa!"
	fi
}

pkg_setup() {
	linux-info_pkg_setup
	CONFIG_CHECK="SND_ALOOP"
	check_extra_config
}

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
	--enable-legacy_iniparser \
	|| die "configure failed"
}

src_compile() {
	emake
}

src_install() {
	default
}

pkg_postinst() {
	elog "To configure cava, look on https://github.com/karlstav/cava"
}
