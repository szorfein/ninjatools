EAPI=7

USE_RUBY="ruby25 ruby26 ruby27"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="interfacez.gemspec"

inherit ruby-fakegem

DESCRIPTION="Simplified network interface API"
HOMEPAGE="https://github.com/picatz/interfacez https://rubygems.org/gems/interfacez"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

all_ruby_prepare() {
	sed -i -e 's/git ls-files -z/find -print0/' ${RUBY_FAKEGEM_GEMSPEC} || die
}
