#!/bin/sh
echo Installing/Upgrading packages...
echo.
sudo apt update
sudo apt upgrade -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove
sudo apt autoclean
echo.
clear
echo Installing important terminal libraries
echo.
sudo apt install ncdu
sudo apt install htop
sudo apt install neofetch
sudo apt install tldr
sudo apt install autoclean
sudo apt install mlocate
sudo apt install gufw
sudo apt install tmux
sudo apt install imwheel
sudo apt install speedtest-cli
sudo apt install gedit
sudo apt install i3
sudo apt install lutris
# sudo apt install wine
# sudo apt install playonlinux
sudo apt install python3-pip
sudo apt install imagemagick
pip install pywal
echo.
clear
echo Installing terminal hacking libraries
echo.
sudo apt install nmap
sudo apt install harvester
sudo apt install proxychains
echo.
clear
echo Installing Terminal games
echo.
sudo apt install fortune
sudo apt install pi
sudo apt install rig
sudo apt install sl
echo.
clear
echo Installing Desktop libraries
echo.
sudo apt install xfce4
sudo apt install streamlink
echo.
clear
echo Installing Desktop Applications
echo.
sudo apt install plank
sudo apt install brave-browser
sudo apt install vlc
sudo apt install gimp
echo.
clear
echo Cant install vscode and github desktop by Terminal alone.
echo.
clear
echo Installing Terminal games
echo.
sudo apt install sl
sudo apt install pi
sudo apt install fortune
sudo apt install rig
sudo apt install aview