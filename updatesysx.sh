#!/bin/zsh
# This {language} file uses the following encoding: utf-8
# {module name}
# {project name}: {github link}
# Created YYYY-MM-DD
# Copyright (c) 2023 Wardo Flores
#
# Copies Xorg config files into the Xorg system config directories automatically.

sudo cp -r $HOME/Linux-Dotfiles/xorg/.xinitrc $HOME/
sudo cp $HOME/Linux-Dotfiles/xorg/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

cd $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/dwm/ $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/dmenu/ $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/slstatus/ $HOME/.config/suckless/

sudo cp -r $HOME/GitHub/Linux-Dotfiles/xorg/suckless/st/ $HOME/.config/suckless/



