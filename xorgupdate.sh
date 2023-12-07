#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Xorg Update
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores
#
# Copies Xorg config files into the Xorg system config directories automatically.

sudo cp -r $HOME/Linux-Dotfiles/xorg/.xinitrc $HOME/
sudo cp $HOME/Linux-Dotfiles/xorg/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

cd $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/dwm/ $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/dmenu/ $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/slstatus/ $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/st/ $HOME/.config/suckless/



