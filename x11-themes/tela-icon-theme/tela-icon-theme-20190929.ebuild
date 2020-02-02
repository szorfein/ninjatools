# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# src: https://github.com/beatussum/beatussum-overlay/tree/master

EAPI=7

inherit xdg

MY_PN="${PN/tela/Tela}"
MY_PV="2019-09-29"
DESCRIPTION="A flat colorful Design icon theme"
HOMEPAGE="https://www.pling.com/p/1279924"
SRC_URI="https://github.com/vinceliuice/${MY_PN}/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~ppc-aix ~x64-cygwin ~x86-cygwin ~amd64-linux ~arm-linux ~arm64-linux ~ppc64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~m68k-mint ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris ~x86-winnt"
IUSE="+standard black blue brown green grey orange pink purple red yellow manjaro ubuntu"
REQUIRED_USE="|| ( standard black blue brown green grey orange pink purple red yellow manjaro ubuntu )"
RESTRICT="primaryuri"

BDEPEND="dev-util/gtk-update-icon-cache"

S="${WORKDIR}/${MY_PN}-${MY_PV}"

PATCHES=(
	"${FILESDIR}/${P}-cache-update.patch"
)

src_install() {
	local colorvariant=(
		$(usev standard)
		$(usev black)
		$(usev blue)
		$(usev brown)
		$(usev green)
		$(usev grey)
		$(usev orange)
		$(usev pink)
		$(usev purple)
		$(usev red)
		$(usev yellow)
		$(usev ubuntu)
		$(usev manjaro)
	)

	einstalldocs

	dodir /usr/share/icons
	./install.sh -d "${D}/usr/share/icons" "${colorvariant[@]}" || die "The installation has failed"
}
