# Copies Linux config files into the system config directories automatically.

cd /home/joey

sudo cp /home/joey/wardoflores/Linux-Dotfiles/zsh/.zshrc .zshrc

cd /home/joey/.config/nvim/

sudo cp /home/joey/.config/nvim/init.vim init.vim


cd /etc

sudo cp /home/joey/wardoflores/Linux-Dotflies/grub grub
sudo cp /home/joey/wardoflores/Linux-Dotfiles/environment environment
sudo cp /home/joey/wardoflores/Linux-Dotfiles/hosts hosts

