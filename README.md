# ninjatools
Some ebuild for Gentoo

##HOWTO  

Configure the repository:  
    
    # mkdir -p /usr/local/portage
    # mkdir -p /etc/portage/repos.conf
    # vim /etc/portage/repos.conf/ninjatools.conf
    
    [Ninja-Tools]
    location = /usr/local/portage
    sync-type = git
    sync-url = https://github.com/szorfein/ninjatools.git
    auto-sync = no  

Save and quit

##Ok now, sync it !

    $ emaint sync -r Ninja-Tools
