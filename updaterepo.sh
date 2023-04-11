# Copies Linux, Wayland, Xorg config files into this repository file automatically.

# Linux system

cd /home/joey

sudo cp .zshrc /home/joey/wardoflores/Linux-Dotfiles/zsh/

cd /etc

sudo cp environment /home/joey/wardoflores/Linux-Dotfiles/
sudo cp hosts /home/joey/wardoflores/Linux-Dotfiles/

cd /home/joey/.config/nvim/

sudo cp init.vim /home/joey/wardoflores/Linux-Dotfiles

cd /etc/default/

sudo cp /etc/default/grub /home/joey/wardoflores/Linux-Dotfiles

# Wayland system

cd /home/joey/.config

sudo cp brave-flags.conf /home/joey/wardoflores/Linux-Dotfiles/wayland
sudo cp electron-flags.conf /home/joey/wardoflores/Linux-Dotfiles/wayland

cd /home/joey/.config/sway

sudo cp config /home/joey/wardoflores/Linux-Dotfiles/wayland/sway/

cd /home/joey/.config/alacritty

sudo cp alacritty.yml /home/joey/wardoflores/Linux-Dotfiles/wayland/alacritty/

cd /home/joey/.config/wofi

sudo cp config /home/joey/wardoflores/Linux-Dotfiles/wayland/wofi/
sudo cp style.css /home/joey/wardoflores/Linux-Dotfiles/wayland/wofi/

cd /home/joey/.config/waybar

sudo cp config /home/joey/wardoflores/Linux-Dotfiles/wayland/waybar/
sudo cp style.css /home/joey/wardoflores/Linux-Dotfiles/wayland/waybar/

cd /home/joey/.config/mako

sudo cp config /home/joey/wardoflores/Linux-Dotfiles/wayland/mako/

# Xorg system

sudo cp /home/joey/.xinitrc /home/joey/wardoflores/Linux-Dotfiles/xorg
sudo cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf /home/joey/wardoflores/Linux-Dotfiles/xorg

cd /home/joey/dwm-6.3/

sudo cp config.def.h /home/joey/wardoflores/Linux-Dotfiles/xorg/dwm/

cd /home/joey/dwmstatus/

sudo cp dwmstatus.c /home/joey/wardoflores/Linux-Dotfiles/xorg/dwmstatus/
