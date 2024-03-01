#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Repository Update
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023-2024 wardoflores

# Copies Linux, Wayland, Xorg config files into this repository automatically.
# 2024-01-18 Requiring Automating of new .config files

# Linux system

cd /etc

sudo cp environment $HOME/GitHub/Linux-Dotfiles/system/
sudo cp hosts $HOME/GitHub/Linux-Dotfiles/system/

cd /etc/default/

sudo cp /etc/default/grub $HOME/GitHub/Linux-Dotfiles/system/

## User

cd $HOME
sudo cp .zshrc $HOME/GitHub/Linux-Dotfiles/zsh/
sudo cp .tmux.conf $HOME/GitHub/Linux-Dotfiles/applications

cd $HOME/.config/nvim/

sudo cp init.vim $HOME/GitHub/Linux-Dotfiles/applications/




# Xorg system

sudo cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf $HOME/GitHub/Linux-Dotfiles/xorg

## User
sudo cp $HOME/.xinitrc $HOME/GitHub/Linux-Dotfiles/xorg

cd $HOME/.config/suckless/

sudo cp -r dwm $HOME/GitHub/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/GitHub/Linux-Dotfiles/xorg/suckless/dwm/.git

sudo cp -r dmenu $HOME/GitHub/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/GitHub/Linux-Dotfiles/xorg/suckless/dmenu/.git

sudo cp -r slstatus $HOME/GitHub/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/GitHub/Linux-Dotfiles/xorg/suckless/slstatus/.git

sudo cp -r st $HOME/GitHub/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/GitHub/Linux-Dotfiles/xorg/suckless/st/.git

# Wayland system

## User

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


