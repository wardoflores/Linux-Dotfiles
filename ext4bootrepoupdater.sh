#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Boot Update
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores
#
# Copies Linux config files into the system config directories automatically.

cd $HOME

sudo cp $HOME/repository/Linux-Dotfiles/zsh/.zshrc .zshrc

cd $HOME/.config/nvim/

sudo cp $HOME/repository/Linux-Dotfiles/applications/neovim/init.vim init.vim

cd /etc

sudo cp $HOME/repository/Linux-Dotflies/system/grub grub
sudo cp $HOME/repository/Linux-Dotfiles/system/environment environment
sudo cp $HOME/repository/Linux-Dotfiles/system/hosts hosts

