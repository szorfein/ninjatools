# ninjatools
Somes additional ebuild for Gentoo.

## HOWTO  
Create required directory:
    
    # mkdir -p /usr/local/ninjatools
    # mkdir -p /etc/portage/repos.conf

Configure the repository:  

Change `sync-uri` bellow with `https://` if you have compile `git` with `curl` which require the port 443 open or `git://` (need port 9418 open).  

    # vim /etc/portage/repos.conf/ninjatools.conf
    [ninjatools]
    location = /usr/local/ninjatools
    sync-type = git
    sync-uri = https://github.com/szorfein/ninjatools.git
    auto-sync = no  

Save and quit

## Ok now, sync it !

    $ emaint sync -r ninjatools 

## Troubleshooting

If you found a package that doesn't work, please, post an issue. They work when i put here but can become obsolete when other packages are updates. 
