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

