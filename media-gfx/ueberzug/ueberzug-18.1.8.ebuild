EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )
inherit distutils-r1

DESCRIPTION="ueberzug is an alternative for w3mimgdisplay"
HOMEPAGE="https://github.com/seebye/ueberzug"
SRC_URI="https://github.com/seebye/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
KEYWORDS="amd64 x86"
SLOT="0"

DEPEND="
  x11-libs/libX11
  x11-libs/libXext
  dev-python/python-xlib
  dev-python/pillow
  dev-python/docopt
  dev-python/psutil
  dev-python/attrs
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}"
