# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

PYTHON_COMPAT=( python3_4 )
inherit distutils-r1

DESCRIPTION="Python library to download Youtube content and retrieve metadata"
HOMEPAGE="https://github.com/mps-youtube/pafy"
SRC_URI="https://github.com/mps-youtube/pafy/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/python
	  net-misc/youtube-dl"
RDEPEND="${DEPEND}"

python_install() {
	distutils-r1_python_install	  
}
