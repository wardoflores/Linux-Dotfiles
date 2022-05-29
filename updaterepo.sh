# Copies config files into this repository file automatically.

cd ~

sudo cp .zshrc /home/joey/coalemus/Sway-Dotfiles/zsh/

cd /etc

sudo cp environment /home/joey/coalemus/Sway-Dotfiles/
sudo cp hosts /home/joey/coalemus/Sway-Dotfiles/

cd ~/.config

sudo cp brave-flags.conf /home/joey/coalemus/Sway-Dotfiles/
sudo cp electron-flags.conf /home/joey/coalemus/Sway-Dotfiles/

cd ~/.config/sway

sudo cp config /home/joey/coalemus/Sway-Dotfiles/sway/

cd ~/.config/alacritty

sudo cp alacritty.yml /home/joey/coalemus/Sway-Dotfiles/alacritty/

cd ~/.config/wofi

sudo cp config /home/joey/coalemus/Sway-Dotfiles/wofi/
sudo cp style.css /home/joey/coalemus/Sway-Dotfiles/wofi/

cd ~/.config/waybar

sudo cp config /home/joey/coalemus/Sway-Dotfiles/waybar/
sudo cp style.css /home/joey/coalemus/Sway-Dotfiles/waybar/

cd ~/.config/mako

sudo cp config /home/joey/coalemus/Sway-Dotfiles/mako/
