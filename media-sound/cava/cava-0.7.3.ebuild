# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit linux-info autotools

DESCRIPTION="Console-based Audio Visualizer for ALSA (=CAVA)"
HOMEPAGE="https://github.com/karlstav/cava"
SRC_URI="https://github.com/karlstav/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="alsa debug pulseaudio portaudio sndio system-iniparser"

DOCS=( README.md example_files/ )

CDEPEND="
	alsa? ( media-libs/alsa-lib )
	pulseaudio? ( media-sound/pulseaudio )
	portaudio? ( media-libs/portaudio )
	sndio? ( media-sound/sndio )
"

RDEPEND="
	${CDEPEND}
	sci-libs/fftw:3.0
	sys-libs/ncurses
	system-iniparser? ( dev-libs/iniparser:4 )
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
	eapply_user
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable debug) \
		$(use_enable alsa input-alsa) \
		$(use_enable pulseaudio input-pulse) \
		$(use_enable portaudio input-portaudio) \
		$(use_enable sndio input-sndio) \
		$(use_enable system-iniparser) \
		--docdir="${EREFIX}/usr/share/doc/${PF}"
}

src_compile() {
	emake
}

src_install() {
	einstalldocs
	emake DESTDIR="${D}" PREFIX=/usr install
}

pkg_postinst() {
	elog "To configure cava, look on https://github.com/karlstav/cava"
}
