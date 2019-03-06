# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="A minimal initramfs for ZFS filesystem"
HOMEPAGE="https://github.com/szorfein/eclosion"
EGIT_REPO_URI="https://github.com/szorfein/eclosion.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="app-misc/pax-utils"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
make DESTDIR="${D}" install
}
