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
sudo cp environment $HOME/repository/Linux-Dotfiles/system/
sudo cp hosts $HOME/repository/Linux-Dotfiles/system/

cd /etc/default/
sudo cp /etc/default/grub $HOME/repository/Linux-Dotfiles/system/

## User

cd $HOME
sudo cp .zshrc $HOME/repository/Linux-Dotfiles/zsh/
sudo cp .tmux.conf $HOME/repository/Linux-Dotfiles/applications/
sudo cp .fehbg $HOME/repository/Linux-Dotfiles/applications/
sudo cp .gitconfig $HOME/repository/Linux-Dotfiles/applications/
sudo cp .wget-hsts $HOME/repository/Linux-Dotfiles/applications/
sudo cp .celestiarc $HOME/repository/Linux-Dotfiles/applications/
sudo cp .gtkrc-2.0 $HOME/repository/Linux-Dotfiles/applications/
sudo cp .p10k.zsh $HOME/repository/Linux-Dotfiles/applications/
sudo cp .msmtprc $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r .cert/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r .tmux/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r .vnc/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r powerlevel10k/ $HOME/repository/Linux-Dotfiles/applications/

cd $HOME/.config/
sudo cp -r xsettingsd/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r nvim/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r xfce4/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r cpupower_gui/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r wireshark/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r shalarm/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r fcitx5/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r fsearch/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r flameshot/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r dunst/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r cava/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r btop/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r obs-studio/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r qalculate/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r qBittorrent/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r rncbc.org/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r shalarm/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r tenacity/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r wal/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp -r wpg/ $HOME/repository/Linux-Dotfiles/applications/
sudo cp pavucontrol.ini $HOME/repository/Linux-Dotfiles/applications/
sudo cp mimeapps.list $HOME/repository/Linux-Dotfiles/applications/
sudo cp droidcam $HOME/repository/Linux-Dotfiles/applications/
sudo cp user-dirs.dirs $HOME/repository/Linux-Dotfiles/applications/

# Xorg system

sudo cp /etc/X11/xorg.conf.d/50-mouse-acceleration.conf $HOME/repository/Linux-Dotfiles/xorg

## User
sudo cp $HOME/.xinitrc $HOME/repository/Linux-Dotfiles/xorg
sudo cp $HOME/.Xresources $HOME/repository/Linux-Dotfiles/applications/
sudo cp $HOME/.Xmodmap $HOME/repository/Linux-Dotfiles/applications/
sudo cp $HOME/.Xauthority $HOME/repository/Linux-Dotfiles/applications/

cd $HOME/.config/suckless/
sudo cp -r dwm $HOME/repository/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/repository/Linux-Dotfiles/xorg/suckless/dwm/.git
sudo cp -r dmenu $HOME/repository/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/repository/Linux-Dotfiles/xorg/suckless/dmenu/.git
sudo cp -r slstatus $HOME/repository/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/repository/Linux-Dotfiles/xorg/suckless/slstatus/.git
sudo cp -r st $HOME/repository/Linux-Dotfiles/xorg/suckless/
sudo rm -rf $HOME/repository/Linux-Dotfiles/xorg/suckless/st/.git

# Wayland system

## User

#sudo cp $HOME/.config/brave-flags.conf $HOME/repository/Linux-Dotfiles/wayland
#sudo cp $HOME/.config/electron-flags.conf $HOME/repository/Linux-Dotfiles/wayland
sudo cp $HOME/.config/sway/config $HOME/repository/Linux-Dotfiles/wayland/sway/
sudo cp /home/.config/alacritty/alacritty.yml $HOME/repository/Linux-Dotfiles/wayland/alacritty/
sudo cp $HOME/.config/wofi/config $HOME/repository/Linux-Dotfiles/wayland/wofi/
sudo cp $HOME/.config/wofistyle.css $HOME/repository/Linux-Dotfiles/wayland/wofi/
sudo cp $HOME/.config/waybar/config $HOME/repository/Linux-Dotfiles/wayland/waybar/
sudo cp $HOME/.config/waybar/style.css $HOME/repository/Linux-Dotfiles/wayland/waybar/
sudo cp $HOME/.config/mako/config $HOME/repository/Linux-Dotfiles/wayland/mako/
