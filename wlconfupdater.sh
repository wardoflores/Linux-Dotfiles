#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Wayland Update
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores
#
# Copies Wayland config files into the Wayland system config directories automatically.

cd $HOME/.config/sway

sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/sway/config config

cd $HOME/.config/alacritty

sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/alacritty/alacritty.yml alacritty.yml

cd $HOME/.config/wofi

sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/wofi/config config
sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/wofi/style.css style.css

cd $HOME/.config/waybar

sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/waybar/config config
sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/waybar/style.css style.css

cd $HOME/.config/mako

sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/mako/config config

cd $HOME/.config

sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/brave-flags.conf brave-flags.conf
sudo cp $HOME/wardoflores/Linux-Dotfiles/wayland/electron-flags.conf electron-flags.conf
