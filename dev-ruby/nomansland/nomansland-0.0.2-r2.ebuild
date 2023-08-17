EAPI=7

USE_RUBY="ruby27 ruby30 ruby31 ruby32"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="nomansland.gemspec"

inherit ruby-fakegem

DESCRIPTION="Implementation of expression for handling things."
HOMEPAGE="https://github.com/szorfein/nomansland https://rubygems.org/gems/nomansland"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

all_ruby_prepare() {
	sed -i -e 's/git ls-files/find -print0/' ${RUBY_FAKEGEM_GEMSPEC} || die
}
