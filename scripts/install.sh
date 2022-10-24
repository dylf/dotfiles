#!/bin/bash

# Apt stuff
sudo apt install -y \
	alacritty \
	apt-transport-https \
	curl \
	gnome-tweaks

# Install fonts
fc-cache -fv

# Set keybindings
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

