#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Boot Update
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores
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

