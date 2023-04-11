# Copies Xorg config files into the Xorg system config directories automatically.

sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/xorg/.xinitrc /home/joey/
sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/xorg/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

cd /home/wardoflores/dwm-6.4/

sudo cp /home/wardoflores/GitHubLinux-Dotfiles/xorg/dwm/config.def.h config.def.h

cd /home/wardoflores/dwmstatus/

sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/xorg/dwmstatus/ dwmstatus.c
