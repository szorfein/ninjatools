# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font git-r3

DESCRIPTION="Monospaced addition to the Roboto type family"
HOMEPAGE="https://github.com/google/fonts"
EGIT_REPO_URI="https://github.com/google/fonts"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

FONT_S="apache/robotomono"
FONT_SUFFIX="ttf"
