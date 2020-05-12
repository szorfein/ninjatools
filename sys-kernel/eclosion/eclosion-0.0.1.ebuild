# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A minimal initramfs for ZFS filesystem"
HOMEPAGE="https://github.com/szorfein/eclosion"
SRC_URI="https://github.com/szorfein/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="cryptsetup gpg"

DEPEND="
	app-misc/pax-utils
	sys-fs/zfs[rootfs]
	sys-fs/zfs-kmod[rootfs]
	sys-apps/kmod[lzma]
	cryptsetup? (
		sys-fs/cryptsetup
	)
	gpg? (
		app-crypt/gnupg
	)
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	sed -i "s/make\( \|$\)/\$(MAKE)\1/g" Makefile
}

src_install() {
	emake DESTDIR="${D}" install
}
