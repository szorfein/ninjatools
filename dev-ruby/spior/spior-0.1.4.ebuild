EAPI=7

USE_RUBY="ruby25 ruby26 ruby27"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="spior.gemspec"

inherit ruby-fakegem

DESCRIPTION="A tool to make TOR your default gateway"
HOMEPAGE="https://github.com/szorfein/spior https://rubygems.org/gems/spior"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	net-vpn/tor
	net-firewall/iptables
	app-admin/sudo
"
ruby_add_rdepend "
	dev-ruby/rainbow
	dev-ruby/interfacez
	dev-ruby/nomansland
	>=dev-ruby/tty-which-0.4.2
"

all_ruby_prepare() {
	sed -i -e 's/git ls-files/find -print0/' ${RUBY_FAKEGEM_GEMSPEC} || die
}

each_ruby_compile() {
	cp -a ext lib/ext || die
}
