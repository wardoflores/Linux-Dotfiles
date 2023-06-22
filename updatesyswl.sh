#!/bin/zsh
# This {language} file uses the following encoding: utf-8
# {module name}
# {project name}: {github link}
# Created YYYY-MM-DD
# Copyright (c) 2023 Wardo Flores
#
# Copies Wayland config files into the Wayland system config directories automatically.

cd /home/joey/.config/sway

sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/sway/config config

cd /home/joey/.config/alacritty

sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/alacritty/alacritty.yml alacritty.yml

cd /home/joey/.config/wofi

sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/wofi/config config
sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/wofi/style.css style.css

cd /home/joey/.config/waybar

sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/waybar/config config
sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/waybar/style.css style.css

cd /home/joey/.config/mako

sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/mako/config config

cd /home/joey/.config

sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/brave-flags.conf brave-flags.conf
sudo cp /home/joey/wardoflores/Linux-Dotfiles/wayland/electron-flags.conf electron-flags.conf
