# Copies Linux, Wayland, Xorg config files into this repository automatically.

# Linux system

cd /home/wardoflores

sudo cp .zshrc /home/wardoflores/GitHub/Linux-Dotfiles/zsh/

cd /etc

sudo cp environment /home/wardoflores/GitHub/Linux-Dotfiles/system/
sudo cp hosts /home/wardoflores/GitHub/Linux-Dotfiles/system/

cd /etc/default/

sudo cp /etc/default/grub /home/wardoflores/GitHub/Linux-Dotfiles/system/

cd /home/wardoflores/.config/nvim/

sudo cp init.vim /home/wardoflores/GitHub/Linux-Dotfiles/applications/neovim/

# Xorg system

sudo cp /home/wardoflores/.xinitrc /home/wardoflores/GitHub/Linux-Dotfiles/xorg
sudo cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf /home/wardoflores/GitHub/Linux-Dotfiles/xorg

cd /home/wardoflores/.config/suckless/

sudo cp -r dwm /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/

sudo cp -r dmenu /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/

sudo cp -r slstatus /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/

sudo cp -r st /home/wardoflores/GitHub/Linux-Dotfiles/xorg/suckless/

# Wayland system

cd /home/wardoflores/.config

sudo cp brave-flags.conf /home/wardoflores/GitHub/Linux-Dotfiles/wayland
sudo cp electron-flags.conf /home/wardoflores/GitHub/Linux-Dotfiles/wayland

cd /home/wardoflores/.config/sway

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/sway/

cd /home/.config/alacritty

sudo cp alacritty.yml /home/wardoflores/GitHub/Linux-Dotfiles/wayland/alacritty/

cd /home/wardoflores/.config/wofi

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/wofi/
sudo cp style.css /home/wardoflores/GitHub/Linux-Dotfiles/wayland/wofi/

cd /home/wardoflores/.config/waybar

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/waybar/
sudo cp style.css /home/wardoflores/GitHub/Linux-Dotfiles/wayland/waybar/

cd /home/wardoflores/.config/mako

sudo cp config /home/wardoflores/GitHub/Linux-Dotfiles/wayland/mako/


