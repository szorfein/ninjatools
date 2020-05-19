EAPI=7

USE_RUBY="ruby25 ruby26 ruby27"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="amnesie.gemspec"

inherit ruby-fakegem

DESCRIPTION="A tool to make your system amnesic"
HOMEPAGE="https://github.com/szorfein/amnesie https://rubygems.org/gems/amnesie"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
	dev-ruby/rainbow
	dev-ruby/interfacez
	dev-ruby/nomansland
	>=dev-ruby/tty-which-0.4.2
"

all_ruby_prepare() {
	sed -i -e 's/git ls-files/find -print0/' ${RUBY_FAKEGEM_GEMSPEC} || die
}
