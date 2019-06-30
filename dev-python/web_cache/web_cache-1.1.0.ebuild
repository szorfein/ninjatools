# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_5 python3_6 )
inherit distutils-r1

DESCRIPTION="Simple Python key-value storage backed up by sqlite3 database"
HOMEPAGE="https://github.com/desbma/web_cache"
SRC_URI="https://github.com/desbma/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
