#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# Arch Install Applications
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores
# Was for full system upgrade, but there are more efficient ways and so it's repurposed to reinstall all packages in a new System.
#
su
echo Installing/Upgrading packages...
echo
pacman -Syu
echo
clear
echo Installing Arch packages (only initial installs, also no zsh, install zsh manually.)
echo
pacman -S linux-zen linux-zen-headers linux-firmware neovim base-devel openssh networkmanager wpa_supplicant wireless_tools netctl dhcpcd lvm2 grub efibootmgr dosfstools os-prober mtools intel-ucode wayland mesa git wget curl cpupower-gui thunar obsidian brave github-desktop alsa-utils qt5-wayland glfw-wayland xorg-xwayland xorg-xlsclients xdg-desktop-portal-wlr libpipewire02  ttf-font-awesome adobe-source-code-pro-fonts wofi waybar slurp grim wl-clipboard redshift lxappearance
echo
clear
echo Installing Arch User Repository packages 
# echo
# yay -S 
echo TODO yay install code
clear
echo Installing/Upgrading packages...
echo
pacman -Syu
echo
clear
exit
