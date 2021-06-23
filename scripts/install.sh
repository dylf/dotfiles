#!/bin/bash

# Apt stuff
sudo apt install -y \
	alacritty \
	apt-transport-https \
	curl \
	fzf \
	gnome-tweaks \
	vim \
	zsh 

# Install brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Install neovim
curl -fsSLo ~/.local/bin/nvim https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod +x ~/.local/bin/nvim
sudo ln -s ~/.local/bin/nvim /usr/bin/nvim


# Install fonts
mkdir -p ~/.local/share/fonts
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/VictorMono.zip -fsSLo /tmp/VictorMonoAll.zip
unzip /tmp/VictorMonoAll.zip -d ~/.local/share/fonts/VictorMono
rm /tmp/VictorMonoAll.zip
fc-cache -fv

# Set keybindings
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
