# Etc Stuff

### Autofs
`sudo ln -sf /home/autumnal/dotfiles/etc/autofs /etc/autofs`

### ENV Variables
`sudo ln -sf /home/autumnal/dotfiles/etc/environment /etc/environment`

### Hosts File
`sudo ln -sf /home/autumnal/dotfiles/etc/hosts-neesama /etc/hosts`

### Init.d OpenRC
- **XOW**: `sudo ln -sf /home/autumnal/dotfiles/etc/init.d/xow /etc/init.d/xow`
- **Zerotier**: `sudo ln -sf /home/autumnal/dotfiles/etc/init.d/zerotier-one /etc/init.d/zerotier-one`

### Lightdm
`sudo ln -sf /home/autumnal/dotfiles/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf`

### Modprobe
`sudo ln -sf /home/autumnal/dotfiles/etc/modprobe.d/hid_apple.conf /etc/modprobe.d/hid_apple.conf`

### OpenRC
`sudo ln -sf /home/autumnal/dotfiles/etc/rc.conf /etc/rc.conf`

### Pacman
- **Arch**: `sudo ln -sf /home/autumnal/dotfiles/etc/pacman-arch.conf /etc/pacman.conf`
- **Artix**: `sudo ln -sf /home/autumnal/dotfiles/etc/pacman-artix.conf /etc/pacman.conf`
- 
### Pipewire
`sudo ln -sf /home/autumnal/dotfiles/etc/pipewire /etc/pipewire`

### Redshift
`sudo ln -sf /home/autumnal/dotfiles/etc/redshift.conf /etc/redshift.conf`

### SSH
`sudo ln -sf /home/autumnal/dotfiles/etc/ssh/sshd_config /etc/ssh/sshd_config`

### X11
Keyboard:  
`sudo ln -sf /home/autumnal/dotfiles/etc/X11/xorg.conf.d/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf`

Display:  
`sudo ln -sf /home/autumnal/dotfiles/etc/X11/xorg.conf.d/11-display-clz.conf /etc/X11/xorg.conf.d/11-display.conf`
