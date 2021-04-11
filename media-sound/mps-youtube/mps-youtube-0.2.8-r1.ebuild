# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit distutils-r1

DESCRIPTION="Terminal-based YouTube player and downloader"
HOMEPAGE="https://github.com/mps-youtube/mps-youtube https://pypi.org/project/mps-youtube/"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

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
