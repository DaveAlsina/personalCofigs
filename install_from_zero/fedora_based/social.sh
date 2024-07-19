#!/bin/bash

# Install telegram
# from how2shout https://linux.how2shout.com/how-to-install-telegram-on-any-fedora-linux-37-36-35/#1_Add_RPM_Fusion_Repository_on_Fedora
sudo dnf upgrade --refresh
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install telegram

# Install discord 
# from It's foss -> https://itsfoss.com/install-discord-fedora/
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update
sudo dnf install discord
