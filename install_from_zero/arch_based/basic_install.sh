#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo ;

#-----------------------------
# add custom terminal aliases
#-----------------------------
cat ../../$SCRIPT_DIR/alias/aliases >> ~/.zshrc 

#-----------------------------
# Change the swappiness value
#-----------------------------
sudo sysctl vm.swappiness=10


#-----------------------------
# Install neovim and text editors
#-----------------------------
sudo pacman -S --noconfirm neovim tmux


#-----------------------------
# Install paru
#-----------------------------

pushd ~
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
popd


#-----------------------------
# Update everything
#-----------------------------
paru 


#-----------------------------
# Workflow
#-----------------------------
paru -S --noconfirm bat lsd rofi alacritty-git github-cli


#-----------------------------
# Install some languages
#----------------------------
paru -S --noconfirm dart-sdk-dev go-dev 
paru -S --noconfirm flutter



#-----------------------------
# Social 
#-----------------------------
paru -S --noconfirm  telegram-desktop whatsapp-for-linux discord_arch_electron 


#-----------------------------
# Browsers 
#-----------------------------
paru -S --noconfirm  brave-bin vivaldi


#-----------------------------
# Music 
#-----------------------------
paru -S --noconfirm  spotify


#-----------------------------
# Update once again
#-----------------------------
paru


#-----------------------------
# Adds aliases
#-----------------------------
echo "Running $SCRIPT_DIR/add_aliases.sh to add custom aliases..."
source $SCRIPT_DIR/add_aliases.sh


