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

### Filesystem
I like `btrfs` but I do not use it properly (yet)

#### Partitions
1. `/boot` 512MB: EFI System (FAT) 
2. `/` Rest: Linux Filesystem (BTRFS) 

### Bootloader
Who needs GRUB or systemd-boot anyways ?  
`sudo efibootmgr -g -c --disk /dev/nvme0n1 --part 1 --label "Artix" --loader /vmlinuz-linux  --unicode "root=PARTUUID=3783aa39-1494-904f-a8ba-06127e518ee0 rw rootfs=btrfs initrd=/amd-ucode.img initrd=/initramfs-linux.img" -e 3 --verbose`
- Select disk-device for the `disk` argument  
**Do not select a partition here**
- for `part` select the part number of the boot partition of the disk (starts @1)
- Use w/e `label` you want
- for `loader` use the vmlinuz-linux file for w/e kernel you are using
- Unicode
  - Insert the PARTUUID of the root partition
  - Change the rootfs variable to your desired filesystem-type
  - Change ucode [according to your cpu](https://wiki.archlinux.org/title/Microcode#EFISTUB)
  - Change initramfs according to your linux kernel
- `e`: EDD version is not detected for my mainboard, so I had to manually declare version 3.0

### Background
`betterlockscreen  -u ~/Pictures/Wallpaper/pic1.png --display 1 -u ~/Pictures/Wallpaper/pic2.png`

### OpenRC
After linking all the user scripts in /etc/init.d/
- **AutoFS**: `sudo rc-update add autofs default`
- **Bluetooth**: `sudo rc-update add bluetoothd default`
- **Cups**: `sudo rc-update add cupsd default`
- **Docker**: `sudo rc-update add docker default`
- **Fuse**: `sudo rc-update add fuse default`
- **Lightdm**: `sudo rc-update add lightdm default`
- **Network Manager**: `sudo rc-update add NetworkManager default`
- **Nordvpn**: `sudo rc-update add nordvpnd default`
- **SSH**: `sudo rc-update add sshd default`
- **XOW**: `sudo rc-update add xow default`
- **Zerotier**: `sudo rc-update add zerotier-one default`