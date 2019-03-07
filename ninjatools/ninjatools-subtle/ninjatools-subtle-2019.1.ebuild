# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Dependencies of subtle and my dots"
HOMEPAGE="https://github.com/szorfein/dotfiles"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ninjatools-full video_cards_i965"

PDEPEND="x11-wm/subtle
x11-misc/polybar[mpd]
app-misc/tmux
media-gfx/feh
media-sound/ncmpcpp
media-sound/mpd
media-sound/mpc
media-fonts/hack
media-fonts/iosevka
media-fonts/material-icons
media-fonts/robotomono
media-fonts/sfmono
media-fonts/ttf-anka-coder
net-misc/youtube-dl
sys-apps/firejail[suid]
www-client/brave-bin
x11-apps/xinit
x11-misc/compton[pcre]
x11-misc/rofi
x11-misc/xclip

video_cards_i965? (
dev-libs/beignet
media-gfx/imagemagick[opencl]
)

ninjatools-full? (
x11-terms/kitty
app-admin/pscircle
app-editor/vim[X]
app-shells/zsh
app-text/zathura
app-text/zathura-pdf-mupdf
app-vim/gnupg
app-vim/lightline
app-vim/nerdtree
app-vim/pathogen
dev-python/pillow[jpeg]
mail-client/mutt[gpg]
media-gfx/imagemagick[jpeg]
net-mail/offlineimap[ssl]
net-misc/aria2[adns]
net-misc/autossh
net-misc/keychain
)"
