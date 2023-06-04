# Copies Xorg config files into the Xorg system config directories automatically.

sudo cp -r /home/wardoflores/Linux-Dotfiles/xorg/.xinitrc /home/wardoflores/
sudo cp /home/wardoflores/Linux-Dotfiles/xorg/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

cd /home/wardoflores/.config/suckless/

sudo cp -r /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/dwm/ /home/wardoflores/.config/suckless/

sudo cp -r /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/dmenu/ /home/wardoflores/.config/suckless/

sudo cp -r /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/slstatus/ /home/wardoflores/.config/suckless/

sudo cp -r /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/st/ /home/wardoflores/.config/suckless/



