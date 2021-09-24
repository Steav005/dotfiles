### Todos
 - [ ] Make some of the stuff which is started by i3 into services for OpenRC
  - [ ] Especially Pipewire
 - [ ] xow for xbox

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
- **Connman**: `sudo rc-update add connmand default`
- **Docker**: `sudo rc-update add docker default`
- **Lightdm**: `sudo rc-update add lightdm default`
- **Nordvpn**: `sudo rc-update add nordvpnd default`
- **Redshift**: `sudo rc-update add redshift default`
- **SSH**: `sudo rc-update add sshd default`
- **Zerotier**: `sudo rc-update add zerotier-one default`
