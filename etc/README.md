# Etc Stuff

### X11
Keyboard:  
`sudo ln -sf /home/autumnal/dotfiles/etc/X11/xorg.conf.d/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf`

Display:  
`sudo ln -sf /home/autumnal/dotfiles/etc/X11/xorg.conf.d/11-display-clz.conf /etc/X11/xorg.conf.d/11-display.conf`

### Pipewire
`sudo ln -sf /home/autumnal/dotfiles/etc/pipewire /etc/pipewire`

### Lightdm
`sudo ln -sf /home/autumnal/dotfiles/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf`

### Init.d OpenRC
- **Redshift**: `sudo ln -sf /home/autumnal/dotfiles/etc/init.d/redshift /etc/init.d/redshift`
- **Zerotier**: `sudo ln -sf /home/autumnal/dotfiles/etc/init.d/zerotier-one /etc/init.d/zerotier-one`

### Redshift
`sudo ln -sf /home/autumnal/dotfiles/etc/redshift.conf /etc/redshift.conf`

### Pacman 
- **Arch**: `sudo ln -sf /home/autumnal/dotfiles/etc/pacman-arch.conf /etc/pacman.conf`
- **Artix**: `sudo ln -sf /home/autumnal/dotfiles/etc/pacman-artix.conf /etc/pacman.conf`

### Hosts File
`sudo ln -sf /home/autumnal/dotfiles/etc/hosts-neesama /etc/hosts`

### ENV Variables
`sudo ln -sf /home/autumnal/dotfiles/etc/environment /etc/environment`

### SSH
`sudo ln -sf /home/autumnal/dotfiles/etc/ssh/sshd_config /etc/ssh/sshd_config`