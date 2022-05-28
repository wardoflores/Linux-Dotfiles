# Copies config files into this repository file automatically.

cd ~

sudo cp .zshrc /home/joey/coalemus/sway-dotfiles/zsh/

cd ~/.config/sway

sudo cp config /home/joey/coalemus/sway-dotfiles/sway/

cd ~/.config/alacritty

sudo cp alacritty.yml /home/joey/coalemus/sway-dotfiles/alacritty/

cd ~/.config/wofi

sudo cp config /home/joey/coalemus/sway-dotfiles/wofi/
sudo cp style.css /home/joey/coalemus/sway-dotfiles/wofi/

cd ~/.config/waybar

sudo cp config /home/joey/coalemus/sway-dotfiles/waybar/
sudo cp style.css /home/joey/coalemus/sway-dotfiles/waybar/

cd ~/.config/mako

sudo cp config /home/joey/coalemus/sway-dotfiles/mako/
