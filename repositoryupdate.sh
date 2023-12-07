#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Repository Update
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores

# Copies Linux, Wayland, Xorg config files into this repository automatically.

# Linux system

cd $HOME

sudo cp .zshrc $HOME/GitHub/Linux-Dotfiles/zsh/

cd /etc

sudo cp environment $HOME/GitHub/Linux-Dotfiles/system/
sudo cp hosts $HOME/GitHub/Linux-Dotfiles/system/

cd /etc/default/

sudo cp /etc/default/grub $HOME/GitHub/Linux-Dotfiles/system/

cd $HOME/.config/nvim/

sudo cp init.vim $HOME/GitHub/Linux-Dotfiles/applications/neovim/

# Xorg system

sudo cp $HOME/.xinitrc $HOME/GitHub/Linux-Dotfiles/xorg
sudo cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf $HOME/GitHub/Linux-Dotfiles/xorg

cd $HOME/.config/suckless/

sudo cp -r dwm $HOME/GitHub/Linux-Dotfiles/xorg/suckless/

sudo cp -r dmenu $HOME/GitHub/Linux-Dotfiles/xorg/suckless/

sudo cp -r slstatus $HOME/GitHub/Linux-Dotfiles/xorg/suckless/

sudo cp -r st $HOME/GitHub/Linux-Dotfiles/xorg/suckless/

# Wayland system

cd $HOME/.config

sudo cp brave-flags.conf $HOME/GitHub/Linux-Dotfiles/wayland
sudo cp electron-flags.conf $HOME/GitHub/Linux-Dotfiles/wayland

cd $HOME/.config/sway

sudo cp config $HOME/GitHub/Linux-Dotfiles/wayland/sway/

cd /home/.config/alacritty

sudo cp alacritty.yml $HOME/GitHub/Linux-Dotfiles/wayland/alacritty/

cd $HOME/.config/wofi

sudo cp config $HOME/GitHub/Linux-Dotfiles/wayland/wofi/
sudo cp style.css $HOME/GitHub/Linux-Dotfiles/wayland/wofi/

cd $HOME/.config/waybar

sudo cp config $HOME/GitHub/Linux-Dotfiles/wayland/waybar/
sudo cp style.css $HOME/GitHub/Linux-Dotfiles/wayland/waybar/

cd $HOME/.config/mako

sudo cp config $HOME/GitHub/Linux-Dotfiles/wayland/mako/


