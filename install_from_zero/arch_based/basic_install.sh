#!/bin/bash

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
# Install neovim and text editors
#-----------------------------
paru -s --noconfirm neovim tmux alacritty-git
#sudo pacman -S nushell starship


#-----------------------------
# Workflow
#-----------------------------
paru -S --noconfirm bat lsd rofi


#-----------------------------
# Install some languages
#----------------------------
#paru -S --noconfirm rustup



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



