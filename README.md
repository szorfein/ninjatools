# ninjatools
Some ebuild for Gentoo

<h2>HOWTO</h2>
<p>
  first u need to install layman<br />
    -> # echo ">=app-portage/layman-2.3.0" >> /etc/portage/package.accept_keywords <br />
    -> # echo "app-portage/layman git" > /etc/portage/package.use/layman <br />
    -> # emerge -av layman <br />
    
  Configure the depot <br />
    -> # mkdir -p /etc/portage/repos.conf <br />
    -> # vim /etc/portage/repos.conf/ninjatools <br />
    [Ninja-Tools] <br />
    location = /usr/local/portage <br />
    sync-type = git <br />
    sync-url = git://github.com/szorfein/ninjatools.git <br />
    auto-sync = no <br />
    -> Save and quit <br />
    
  Ok now for sync it <br />
    -> $ emaint sync -r Ninja-Tools <br />
</p>
