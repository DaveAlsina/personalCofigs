#!/bin/bash


#-----------------------------
# App images launcher
#-----------------------------
paru -S --noconfirm appimagelauncher


#-----------------------------
# Notion
#-----------------------------
paru -S --noconfirm notion-app


#-----------------------------
# Xournal
#-----------------------------
paru -S --noconfirm xournal

#-----------------------------
# Zoom
#-----------------------------
paru -S --noconfirm zoom

#-----------------------------
# Kicad y thonny
#-----------------------------
paru -S --noconfirm  kicad thonny


# Importing libraries and setting things up 
sudo mkdir -p /usr/share/kicad/footprints/ && cd /usr/share/kicad/footprints/ && sudo wget https://gitlab.com/kicad/libraries/kicad-footprints/-/archive/master/kicad-footprints-master.zip && sudo unzip kicad-footprints-master.zip

sudo mkdir -p /usr/share/kicad/symbols/ && cd /usr/share/kicad/symbols/ && sudo wget https://gitlab.com/kicad/libraries/kicad-symbols/-/archive/master/kicad-symbols-master.zip && sudo unzip kicad-symbols-master.zip

sudo mkdir -p /usr/share/kicad/3dmodels/ && cd /usr/share/kicad/3dmodels/ && sudo wget https://gitlab.com/kicad/libraries/kicad-packages3D/-/archive/master/kicad-packages3D-master.zip && sudo unzip kicad-packages3D-master.zip

#-----------------------------
# Android Studio 
#-----------------------------
paru -S --noconfirm android-studio


