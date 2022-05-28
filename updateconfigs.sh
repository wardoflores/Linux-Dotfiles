# Copies config files into the system config directories automatically.

cd ~

sudo cp /home/joey/coalemus/sway-dotfiles/zsh/.zshrc .zshrc

cd /etc

sudo cp /home/joey/coalemus/sway-dotfiles/environment environment
sudo cp /home/joey/coalemus/sway-dotfiles/hosts hosts

cd ~/.config

sudo cp /home/joey/coalemus/sway-dotfiles/brave-flags.conf brave-flags.conf
sudo cp /home/joey/coalemus/sway-dotfiles/electron-flags.conf electron-flags.conf

cd ~/.config/sway

sudo cp /home/joey/coalemus/sway-dotfiles/sway/config config

cd ~/.config/alacritty

sudo cp /home/joey/coalemus/sway-dotfiles/alacritty/alacritty.yml alacritty.yml

cd ~/.config/wofi

sudo cp /home/joey/coalemus/sway-dotfiles/wofi/config config
sudo cp /home/joey/coalemus/sway-dotfiles/wofi/style.css style.css

cd ~/.config/waybar

sudo cp /home/joey/coalemus/sway-dotfiles/waybar/config config
sudo cp /home/joey/coalemus/sway-dotfiles/waybar/style.css style.css

cd ~/.config/mako

sudo cp /home/joey/coalemus/sway-dotfiles/mako/config config
