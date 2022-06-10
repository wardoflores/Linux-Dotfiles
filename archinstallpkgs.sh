#!/bin/zsh
su
echo Installing/Upgrading packages...
echo
pacman -Syu
echo
clear
echo Installing Arch packages (only initial installs, also no zsh, install zsh manually.)
echo
pacman -S linux-zen linux-zen-headers linux-lts linux-lts-headers linux-firmware nano base-devel openssh networkmanager wpa_supplicant wireless_tools netctl dhcpcd lvm2 grub efibootmgr dosfstools os-prober mtools intel-ucode wayland mesa lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings git wget curl cpupower-gui thunar syncthing obsidian brave-nightly-bin visual-studio-code-bin github-desktop alsa-utils qt5-wayland glfw-wayland xorg-xwayland xorg-xlsclients xdg-desktop-portal-wlr libpipewire02 ttf-inconsolata ttf-font-awesome adobe-source-code-pro-fonts wofi waybar slurp grim wl-clipboard redshift-git playerctl lxappearance
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