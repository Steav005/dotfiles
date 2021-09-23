### Todos
 - [ ] Make some of the stuff which is started by i3 into services for OpenRC
 - [ ] zerotier somehow gives the network a wrong IP Range. A restart always fixes this
 - [ ] xow because xbox
 - [ ] ssh config

### Install Packages
`yay -S --needed --norebuild --nocleanmenu --answerclean N --nodiffmenu $(<softwarelist.txt)`


### Groups
#### Add User Groups
`groupadd -r <group>`
- autologin
- nordvpn
- docker

#### Add User to Groups
`gpasswd -a autumnal <group>`
- wheel
- disk
- audio
- input
- video
- power
- autologin
- nordvpn
- docker

### Makepkg.conf
```conf
# Compile nativ
CFLAGS="-march=native -O2 -pipe -fno-plt -fexceptions \
        -Wp,-D_FORTIFY_SOURCE=2 -Wformat -Werror=format-security \
        -fstack-clash-protection -fcf-protection"
RUSTFLAGS="-C opt-level=2 -C target-cpu=native"
# Cores go brrr
MAKEFLAGS="-j$(nproc)"
# Cache because why not
BUILDENV=(!distcc color ccache check !sign)
```

### OpenRC
After linking all the user scripts in /etc/init.d/
- **Lightdm**: `sudo rc-update add lightdm default`
- **Redshift**: `sudo rc-update add redshift default`
- **Docker**: `sudo rc-update add docker default`
- **Nordvpn**: `sudo rc-update add nordvpnd default`
- **Zerotier**: `sudo rc-update add zerotier-one default`
