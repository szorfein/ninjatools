# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit font python-any-r1

DESCRIPTION="a bitmap font"
HOMEPAGE="https://www.donationcoder.com/Software/Jibz/Dina/"
SRC_URI="https://www.donationcoder.com/Software/Jibz/Dina/downloads/Dina.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+pcf"

DEPEND="x11-libs/libX11
		pcf? ( x11-apps/bdftopcf )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/BDF/"
#FONT_S="Dina"
#FONT_SUFFIX="bdf"

src_compile() {
	sed -i 's/microsoft-cp1252/ISO8859-1/' *.bdf

	if use pcf ; then
		for i in "BDF/*.bdf" ; do
			bdftopcf "$i" | gzip -c -9 > "${i//bdf/pcf}.gz" || die
		done
	fi  
}

src_install() {
	if use pcf; then
		FONT_SUFFIX="pcf.gz" font_src_install
	else
		FONT_SUFFIX="bdf" font_src_install
	fi
}
