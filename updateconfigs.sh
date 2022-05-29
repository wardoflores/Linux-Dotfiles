# Copies config files into the system config directories automatically.

cd ~

sudo cp /home/joey/coalemus/Sway-Dotfiles/zsh/.zshrc .zshrc

cd /etc

sudo cp /home/joey/coalemus/Sway-Dotfiles/environment environment
sudo cp /home/joey/coalemus/Sway-Dotfiles/hosts hosts

cd ~/.config

sudo cp /home/joey/coalemus/Sway-Dotfiles/brave-flags.conf brave-flags.conf
sudo cp /home/joey/coalemus/Sway-Dotfiles/electron-flags.conf electron-flags.conf

cd ~/.config/sway

sudo cp /home/joey/coalemus/Sway-Dotfiles/sway/config config

cd ~/.config/alacritty

sudo cp /home/joey/coalemus/Sway-Dotfiles/alacritty/alacritty.yml alacritty.yml

cd ~/.config/wofi

sudo cp /home/joey/coalemus/Sway-Dotfiles/wofi/config config
sudo cp /home/joey/coalemus/Sway-Dotfiles/wofi/style.css style.css

cd ~/.config/waybar

sudo cp /home/joey/coalemus/Sway-Dotfiles/waybar/config config
sudo cp /home/joey/coalemus/Sway-Dotfiles/waybar/style.css style.css

cd ~/.config/mako

sudo cp /home/joey/coalemus/Sway-Dotfiles/mako/config config
