# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )
inherit distutils-r1

DESCRIPTION="Smart Automatic Cover Art Downloader"
HOMEPAGE="https://github.com/desbma/sacad"
SRC_URI="https://github.com/desbma/${PN}/archive/${PV}.tar.gz"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/aiohttp
  dev-python/appdirs 
  >=dev-python/bitarray-0.8.3 
  dev-python/cssselect
  dev-python/lxml
  media-libs/mutagen
  dev-python/pillow[webp]
  dev-python/tqdm
  dev-python/web_cache
  "
RDEPEND="${DEPEND}"
BDEPEND=""
