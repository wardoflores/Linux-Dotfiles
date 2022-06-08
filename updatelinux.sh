# Copies Linux config files into the system config directories automatically.

cd /home/joey

sudo cp /home/joey/coalemus/Linux-Dotfiles/zsh/.zshrc .zshrc

cd /etc

sudo cp /home/joey/coalemus/Linux-Dotfiles/environment environment
sudo cp /home/joey/coalemus/Linux-Dotfiles/hosts hosts

cd /home/joey/.config

sudo cp /home/joey/coalemus/Linux-Dotfiles/brave-flags.conf brave-flags.conf
sudo cp /home/joey/coalemus/Linux-Dotfiles/electron-flags.conf electron-flags.conf
