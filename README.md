# ninjatools

Somes additional ebuild for Gentoo.

## HOWTO  

Create the required directory:
    
    # mkdir -p /usr/local/ninjatools
    # mkdir -p /etc/portage/repos.conf

Download the ninjatools.conf: 

    # wget -P /etc/portage/repos.conf/ https://raw.githubusercontent.com/szorfein/ninjatools/master/ninjatools.conf

## Sync it.

    # emaint sync --repo ninjatools 

## Troubleshooting

If you found a package that doesn't work, please, post an issue. They work when i put here but can become obsolete when other packages are updates. 
