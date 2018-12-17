# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7} )
inherit distutils-r1 git-r3

DESCRIPTION="Python API wrapper for lea.kz"
HOMEPAGE="https://github.com/thehappydinoa/leakz"
EGIT_REPO_URI="https://github.com/thehappydinoa/leakz.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="dev-python/setuptools"
RDEPEND="${DEPEND}
  dev-python/requests
  test? ( dev-python/pytest )"

DOCS=( README.rst )
