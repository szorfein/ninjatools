# ninjatools
Some ebuild for Gentoo

HOWTO

  first u need to install layman
    -> # echo "app-portage/layman +git" > /etc/portage/package.use/layman
    -> # emerge -av layman
    
  Configure the depot
    -> # mkdir -p /etc/portage/repos.conf
    -> # vim /etc/portage/repos.conf/ninjatools
    [Ninja-Tools]
    location = /usr/local/portage
    sync-type = git
    sync-url = git://github.com/szorfein/ninjatools.git
    auto-sync = no
    -> Save and quit
    
  Ok now for sync it
    -> $ emaint sync -r Ninja-Tools
