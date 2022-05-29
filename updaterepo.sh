# Copies config files into this repository file automatically.

cd /home/joey

sudo cp .zshrc /home/joey/coalemus/Sway-Dotfiles/zsh/

cd /etc

sudo cp environment /home/joey/coalemus/Sway-Dotfiles/
sudo cp hosts /home/joey/coalemus/Sway-Dotfiles/

cd /home/joey/.config

sudo cp brave-flags.conf /home/joey/coalemus/Sway-Dotfiles/
sudo cp electron-flags.conf /home/joey/coalemus/Sway-Dotfiles/

cd /home/joey/.config/sway

sudo cp config /home/joey/coalemus/Sway-Dotfiles/sway/

cd /home/joey/.config/alacritty

sudo cp alacritty.yml /home/joey/coalemus/Sway-Dotfiles/alacritty/

cd /home/joey/.config/wofi

sudo cp config /home/joey/coalemus/Sway-Dotfiles/wofi/
sudo cp style.css /home/joey/coalemus/Sway-Dotfiles/wofi/

cd /home/joey/.config/waybar

sudo cp config /home/joey/coalemus/Sway-Dotfiles/waybar/
sudo cp style.css /home/joey/coalemus/Sway-Dotfiles/waybar/

cd /home/joey/.config/mako

sudo cp config /home/joey/coalemus/Sway-Dotfiles/mako/
