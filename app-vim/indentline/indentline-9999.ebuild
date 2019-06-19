# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin git-r3

DESCRIPTION="A vim plugin to display the indention levels with thin vertical lines"
HOMEPAGE="https://github.com/Yggdroot/indentLine"
EGIT_REPO_URI="https://github.com/Yggdroot/indentLine.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( README )
