### TODOS
- [ ] fcitx5 hotkey con strg+shift entfernen

### Install Packages
`yay -S --needed --norebuild --nocleanmenu --answerclean N --nodiffmenu $(<softwarelist.txt)`

### Groups
#### Add User Groups
`groupadd -r <group>`
- autologin
- docker
- nordvpn

#### Add User to Groups
`gpasswd -a autumnal <group>`
- audio
- autologin
- disk
- docker
- input
- nordvpn
- power
- rtkit
- video
- wheel

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
- **Bluetooth**: `sudo rc-update add bluetoothd default`
- **Network Manager**: `sudo rc-update add NetworkManager default`
- **Docker**: `sudo rc-update add docker default`
- **Lightdm**: `sudo rc-update add lightdm default`
- **Nordvpn**: `sudo rc-update add nordvpnd default`
- **SSH**: `sudo rc-update add sshd default`
- **XOW**: `sudo rc-update add xow default`
- **Zerotier**: `sudo rc-update add zerotier-one default`