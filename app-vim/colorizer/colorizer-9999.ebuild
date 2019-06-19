# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin git-r3

DESCRIPTION="A Vim plugin to colorize all text in the form #rrggbb or #rgb."
HOMEPAGE="https://github.com/lilydjwg/colorizer"
EGIT_REPO_URI="https://github.com/lilydjwg/colorizer.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( README )
