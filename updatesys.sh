#!/bin/zsh
# This {language} file uses the following encoding: utf-8
# {module name}
# {project name}: {github link}
# Created YYYY-MM-DD
# Copyright (c) 2023 Wardo Flores
#
# Copies Linux config files into the system config directories automatically.

cd $HOME

sudo cp $HOME/GitHub/Linux-Dotfiles/zsh/.zshrc .zshrc

cd $HOME/.config/nvim/

sudo cp $HOME/GitHub/Linux-Dotfiles/applications/neovim/init.vim init.vim

cd /etc

sudo cp $HOME/GitHub/Linux-Dotflies/system/grub grub
sudo cp $HOME/GitHub/Linux-Dotfiles/system/environment environment
sudo cp $HOME/GitHub/Linux-Dotfiles/system/hosts hosts

