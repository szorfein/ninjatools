# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vim-plugin git-r3

DESCRIPTION="A lightweight plugin to display the list of buffers in the lightline vim plugin
"
HOMEPAGE="https://github.com/mengelbrecht/lightline-bufferline"
EGIT_REPO_URI="https://github.com/mengelbrecht/lightline-bufferline.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( README )
