# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{7,8,9} )
inherit git-r3 python-r1 python-utils-r1

EGIT_REPO_URI="https://github.com/GitHackTools/Leaked.git"

DESCRIPTION="A checking tool for hash code and passwords leaked"
HOMEPAGE="https://github.com/GitHackTools/Leaked"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="${PYTHON_DEPS}
  dev-python/colorama
  dev-python/leakz"
RDEPEND="${DEPEND}
    dev-python/requests"

DOCS=( README.md )
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare() {
    #eapply "${FILESDIR}/apply_header.patch"
	default
}

src_install() {
    default
	python_foreach_impl python_doexe "${PN}".py
}
