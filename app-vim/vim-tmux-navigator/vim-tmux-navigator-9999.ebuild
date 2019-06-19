# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin git-r3

DESCRIPTION="Seamless navigation between tmux panes and vim splits"
HOMEPAGE="https://github.com/christoomey/vim-tmux-navigator"
EGIT_REPO_URI="https://github.com/christoomey/vim-tmux-navigator.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( README )
