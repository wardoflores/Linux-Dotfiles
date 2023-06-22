#!/bin/zsh
# This {language} file uses the following encoding: utf-8
# {module name}
# {project name}: {github link}
# Created YYYY-MM-DD
# Copyright (c) 2023 Wardo Flores
#
# Copies Linux config files into the system config directories automatically.

cd /home/wardoflores

sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/zsh/.zshrc .zshrc

cd /home/wardoflores/.config/nvim/

sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/applications/neovim/init.vim init.vim

cd /etc

sudo cp /home/wardoflores/GitHub/Linux-Dotflies/system/grub grub
sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/system/environment environment
sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/system/hosts hosts

