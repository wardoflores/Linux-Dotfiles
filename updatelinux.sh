# Copies Linux config files into the system config directories automatically.

cd /home/wardoflores

sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/zsh/.zshrc .zshrc

cd /home/wardoflores/.config/nvim/

sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/applications/neovim/init.vim init.vim

cd /etc

sudo cp /home/wardoflores/GitHub/Linux-Dotflies/system/grub grub
sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/system/environment environment
sudo cp /home/wardoflores/GitHub/Linux-Dotfiles/system/hosts hosts

