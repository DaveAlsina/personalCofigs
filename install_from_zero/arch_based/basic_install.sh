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
# Add chinese language support 
#-----------------------------
#https://youtu.be/8XDmLr6wb4M
sudo pacman -S --noconfirm noto-fonts-cjk adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts
sudo pacman -S --noconfirm fcitx5 fcitx5-gtk fcitx5-qt fcitx5-chinese-addons fcitx5-configtool


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
# Install other service and tools manager
#-----------------------------
paru -S --noconfirm snapd
sudo systemctl restart snapd.service


#-----------------------------
# Workflow
#-----------------------------
paru -S --noconfirm bat lsd rofi alacritty-git github-cli github-desktop-bin


#-----------------------------
# Install some languages
#----------------------------
paru -S --noconfirm julia-bin go-dev 

#------------------------------
# Installing flutter and dart 
#------------------------------
paru -S --noconfirm ninja
paru -S --noconfirm ninja-git

cd ~/Downloads/ && wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.10.4-stable.tar.xz
cd ~ && mkdir development && cd development && tar xf ~/Downloads/flutter_linux_3.10.4-stable.tar.xz



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
snap install spotify


#-----------------------------
# Update once again
#-----------------------------
paru


#-----------------------------
# Adds aliases
#-----------------------------
echo "Running $SCRIPT_DIR/add_aliases.sh to add custom aliases..."
source $SCRIPT_DIR/add_aliases.sh

#-----------------------------
# Sets flutter up
#-----------------------------
flutter precache 

