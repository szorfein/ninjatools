# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2


EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit python-r1 python-utils-r1

DESCRIPTION="hash identifier"
HOMEPAGE="https://code.google.com/archive/p/hash-identifier/"
SRC_URI="https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/${PN}/Hash_ID_v${PV}.py -> ${P}.py"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}"
S="${WORKDIR}"

src_prepare() {
  cp "${DISTDIR}/${P}.py" "${WORKDIR}/${PN}"
  eapply "${FILESDIR}/hash-identifier-header.patch"
  default
}

src_install() {
  default
  python_foreach_impl python_doexe "${PN}"
}
