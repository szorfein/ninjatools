EAPI=7

USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="spior.gemspec"

inherit ruby-fakegem linux-info

DESCRIPTION="A tool to make TOR your default gateway"
HOMEPAGE="https://github.com/szorfein/spior https://rubygems.org/gems/spior"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
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
CONFIG_CHECK="
    ~NETFILTER_ADVANCED
    ~NF_TABLES
	~NF_CONNTRACK
	~IP_NF_NAT
	~IP_NF_TARGET_REDIRECT
"

all_ruby_prepare() {
	sed -i -e 's/git ls-files/find -print0/' ${RUBY_FAKEGEM_GEMSPEC} || die
}

each_ruby_compile() {
	cp -a ext lib/ext || die
}
