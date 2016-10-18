EAPI=6

PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit font python-any-r1

DESCRIPTION="a bitmap font"
HOMEPAGE="https://github.com/lucy/tewi-font"
if [[ ${PV} != *9999* ]]; then
	SRC_URI="https://github.com/lucy/tewi-font/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~sparc-fbsd ~x86-fbsd"
else
	EGIT_REPO_URI="https://github.com/lucy/tewi-font.git"
	inherit git-r3
fi

LICENSE="MIT"
SLOT="0"

IUSE="+pcf"

DEPEND="
	${PYTHON_DEPS}
	x11-libs/libX11
	pcf? ( x11-apps/bdftopcf )"
RDEPEND="x11-libs/libX11"

src_compile() {
	if use pcf; then
		emake
	else
		emake var
	fi
}

src_install() {
	insinto "/usr/share/fonts/${PN}"
	if use pcf; then
		doins out/*
	else
		doins *.bdf
	fi
	font_src_install
}
