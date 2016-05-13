# ninjatools
Some ebuild for Gentoo

<h2>HOWTO</h2>
<p>
  Configure the depot <br />
    
    -> # mkdir -p /etc/portage/repos.conf <br />
    
    -> # vim /etc/portage/repos.conf/ninjatools.conf <br />
    
    [Ninja-Tools] <br />
    location = /usr/local/portage <br />
    sync-type = git <br />
    sync-url = https://github.com/szorfein/ninjatools.git <br />
    auto-sync = no <br />
    -> Save and quit <br />
</p>
<p>
  Ok now for sync it <br />
    -> $ emaint sync -r Ninja-Tools <br />
</p>
