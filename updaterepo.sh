# Copies Linux, Wayland, Xorg config files into this repository file automatically.

# Linux system

cd /home/wardoflores

sudo cp .zshrc /home/wardoflores/GitHub/Linux-Dotfiles/zsh/

cd /etc

sudo cp environment /home/wardoflores/GitHub/Linux-Dotfiles/
sudo cp hosts /home/wardoflores/GitHub/Linux-Dotfiles/

cd /home/wardoflores/.config/nvim/

sudo cp init.vim /home//wardoflores/GitHub/Linux-Dotfiles

cd /etc/default/

sudo cp /etc/default/grub /home/wardoflores/GitHub/Linux-Dotfiles

# Wayland system

cd /home/wardoflores/.config

sudo cp brave-flags.conf /home/wardoflores/GitHub/Linux-Dotfiles/wayland
sudo cp electron-flags.conf /home/wardoflores/GitHub/Linux-Dotfiles/wayland

cd /home/wardoflores/.config/sway

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/sway/

cd /home/wardoflores/.config/alacritty

sudo cp alacritty.yml /home/wardoflores/GitHub/Linux-Dotfiles/wayland/alacritty/

cd /home/wardoflores/.config/wofi

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/wofi/
sudo cp style.css /home/wardoflores/Github/Linux-Dotfiles/wayland/wofi/

cd /home/joey/.config/waybar

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/waybar/
sudo cp style.css /home/wardoflores/GitHub/Linux-Dotfiles/wayland/waybar/

cd /home/joey/.config/mako

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/mako/

# Xorg system

sudo cp /home/wardoflores/.xinitrc /home/wardoflores/GitHub/Linux-Dotfiles/xorg
sudo cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf /home/wardoflores/GitHub/Linux-Dotfiles/xorg

cd /home/wardoflores/dwm-6.4/

sudo cp config.def.h /home/wardoflores/GitHub/Linux-Dotfiles/xorg/dwm/

cd /home/wardoflores/dwmstatus/

sudo cp dwmstatus.c /home/wardoflores/GitHub/Linux-Dotfiles/xorg/dwmstatus/
