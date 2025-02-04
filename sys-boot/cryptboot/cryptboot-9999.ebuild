# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3

DESCRIPTION="Encrypted boot partition manager with UEFI Secure Boot support"
HOMEPAGE="https://github.com/xmikos/cryptboot"
EGIT_REPO_URI="https://github.com/szorfein/cryptboot.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="grub"

DEPEND="sys-boot/efibootmgr
app-crypt/efitools
grub? ( sys-boot/grub )"

RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	make DESTDIR="${D}" install
}
