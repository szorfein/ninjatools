# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=5
PYTHON_COMPAT=( python3_4 )
inherit distutils-r1

DESCRIPTION="CLI Application to search, stream and download youtube video"
HOMEPAGE="https://github.com/mps-youtube/mps-youtube"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/python
		dev-python/pafy[${PYTHON_USEDEP}]
		media-video/mpv"
RDEPEND="${DEPEND}"

python_compile() {
	echo ""
}
python_install() {
	PYTHONPATH="." distutils-r1_python_install
}
python_install() {
	PYTHONPATH="." distutils-r1_python_install
}
