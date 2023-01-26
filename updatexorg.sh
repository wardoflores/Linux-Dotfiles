# Copies Xorg config files into the Xorg system config directories automatically.

sudo cp /home/joey/wardoflores/Linux-Dotfiles/xorg/.xinitrc /home/joey/
sudo cp /home/joey/wardoflores/Linux-Dotfiles/xorg/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

cd /home/joey/dwm-6.3/

sudo cp /home/joey/wardoflores/Linux-Dotfiles/xorg/dwm/config.def.h config.def.h

cd /home/joey/dwmstatus/

sudo cp /home/joey/wardoflores/Linux-Dotfiles/xorg/dwmstatus/ dwmstatus.c