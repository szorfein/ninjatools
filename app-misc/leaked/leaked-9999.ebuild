# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{3_4,3_5,3_6} )
inherit git-r3 python-r1 python-utils-r1

EGIT_REPO_URI="https://github.com/GitHackTools/Leaked.git"

DESCRIPTION="A checking tool for hash code and passwords leaked"
HOMEPAGE="https://github.com/GitHackTools/Leaked"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}
    dev-python/requests"

DOCS=( README.md )
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare() {
    eapply "${FILESDIR}/apply_header.patch"
	default
}

src_install() {
    default
	python_foreach_impl python_doexe "${PN}".py
}
