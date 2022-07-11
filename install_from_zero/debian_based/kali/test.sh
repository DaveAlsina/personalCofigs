#!/bin/bash

print_downloading_message() {
  echo "#########################"  
  echo "Downloading $1 ..."
  echo "#########################"  
}



##########################
# instala discord
##########################

print_downloading_message "discord"
	
cd ~/Downloads
wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i ~/Downloads/discord*.deb

rm ./discord.deb




