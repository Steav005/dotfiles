Install Packages  
First install yay
yay -S --needed --norebuild --nocleanmenu --answerclean N --nodiffmenu $(<softwarelist.txt)

Add User Groups
groupadd -r <group>
- autologin
- nordvpn
- docker

User Groups
gpasswd -a autumnal <group> 
- wheel
- disk
- audio
- input
- video
- power
- autologin
- nordvpn
- docker

Makepkg.conf
CFLAGS="-march=native -O2 -pipe -fno-plt -fexceptions \
        -Wp,-D_FORTIFY_SOURCE=2 -Wformat -Werror=format-security \
        -fstack-clash-protection -fcf-protection"
RUSTFLAGS="-C opt-level=2 -C target-cpu=native"
MAKEFLAGS="-j$(nproc)"
BUILDENV=(!distcc color ccache check !sign)

