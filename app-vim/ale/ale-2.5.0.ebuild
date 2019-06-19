# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin

MY_P="${PN}-${PV}"

DESCRIPTION="Check syntax in Vim asynchronously and fix files"
HOMEPAGE="https://github.com/w0rp/ale"
SRC_URI="https://github.com/w0rp/${PN}/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( README )
