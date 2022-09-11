#!/bin/bash

DOWNLOADS_FOLDER='/home/dave/Downloads'

print_downloading_message() {
  echo "#########################"  
  echo "Downloading $1 ..."
  echo "#########################"  
}

##########################
# instala arduino  
##########################
print_downloading_message "arduino"

cd $DOWNLOADS_FOLDER
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz

tar -xf $DOWNLOADS_FOLDER/arduino*.tar.xz
rm  $DOWNLOADS_FOLDER/arduino*.tar.xz

$DOWNLOADS_FOLDER/arduino-1.8.19/arduino-linux-set-up.sh
sudo $DOWNLOADS_FOLDER/arduino-1.8.19/install.sh


##########################
# instala thonny micropython IDE
##########################

sudo apt install -y thonny


##########################
# instala chrome 
##########################
print_downloading_message "chrome"

cd $DOWNLOADS_FOLDER
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y $DOWNLOADS_FOLDER/google-chrome*.deb
rm $DOWNLOADS_FOLDER/google-chrome*.deb
cd

##########################
# instala vivaldi
##########################

cd $DOWNLOADS_FOLDER
wget https://downloads.vivaldi.com/stable/vivaldi-stable_5.3.2679.68-1_amd64.deb
sudo apt install -y $DOWNLOADS_FOLDER/vivaldi*.deb
rm $DOWNLOADS_FOLDER/vivaldi*.deb
cd

##########################
# instala brave
##########################
print_downloading_message "brave"

sudo apt install -y apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt install -y brave-browser


#############################
# instala  zoom
#############################
print_downloading_message "zoom"

cd $DOWNLOADS_FOLDER
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install -y $DOWNLOADS_FOLDER/zoom*.deb

rm $DOWNLOADS_FOLDER/zoom*.deb



##########################
# instala discord
##########################
print_downloading_message "discord"

cd $DOWNLOADS_FOLDER
wget -O discord.deb https://discord.com/api/download\?platform=linux\&format=deb
sudo apt install -y $DOWNLOADS_FOLDER/discord.deb
rm $DOWNLOADS_FOLDER/discord.deb



##########################
# instala spotify
##########################
print_downloading_message  "spotify"

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install -y spotify-client


#########################
# instala anaconda
#########################

cd $DOWNLOADS_FOLDER
wget https://telegram.org/dl/desktop/linux
wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
bash $DOWNLOADS_FOLDER/Anaconda*.sh

conda activate base
conda install jupyter matplotlib numba scipy tensorflow 
rm $DOWNLOADS_FOLDER/Anaconda*.sh



#############################
# instala xournal
#############################
sudo apt install -y xournal


#############################
# instala write 
#############################

#cd ~/Downloads 
#wget http://www.styluslabs.com/download/write-tgz
#tar -xf write-tgz
#rm write-tgz
#cd Write
#./setup.sh

#############################
# instala app image launcher
##############################

cd $DOWNLOADS_FOLDER

wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-lite-2.2.0-travis995-0f91801-x86_64.AppImage

chmod 777 $DOWNLOADS_FOLDER/appimagelauncher*
$DOWNLOADS_FOLDER/appimagelauncher-lite-*.AppImage install

rm $DOWNLOADS_FOLDER/appimagelauncher*.AppImage

#############################
# instala  todoist
#############################
#wget https://todoist.com/linux_app/appimage
#mv appimage ./todoist
#mv ./todoist ~/Applications


##########################
# instala telegram
##########################
print_downloading_message "telegram"

cd $DOWNLOADS_FOLDER
wget https://telegram.org/dl/desktop/linux
mv $DOWNLOADS_FOLDER/linux $DOWNLOADS_FOLDER/telegram.tar.xz
tar -xf $DOWNLOADS_FOLDER/telegram.tar.xz 
rm $DOWNLOADS_FOLDER/telegram.tar.xz

##########################
# instala whatsdesktop
##########################

cd $DOWNLOADS_FOLDER
wget https://zerkc.gitlab.io/whatsdesk/whatsdesk_0.3.9_amd64.deb
sudo apt install -y $DOWNLOADS_FOLDER/whatsdesk_0.3.9_amd64.deb
rm $DOWNLOADS_FOLDER/whatsdesk_0.3.9_amd64.deb



#############################
# instala Chrome
##############################

cd $DOWNLOADS_FOLDER

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install -y $DOWNLOADS_FOLDER/google-chrome-stable*.deb
rm  $DOWNLOADS_FOLDER/google-chrome-stable*.deb
cd

#############################
# instala Notion 
##############################

cd $DOWNLOADS_FOLDER
wget https://github.com/notion-enhancer/notion-repackaged/releases/download/v2.0.18-1/Notion-2.0.18-1.AppImage
mv $DOWNLOADS_FOLDER/Notion*.AppImage ~/Applications
cd 


#############################
# instala Obsidian -> por si acaso 
##############################

#cd ~/Downloads 
#wget https://github.com/obsidianmd/obsidian-releases/releases/download/v0.14.6/obsidian_0.14.6_amd64.deb
#sudo apt install -y ./obsidian*.deb
#rm obsidian*.deb
#cd 


#############################
# instala kicad para diseñar circuitos 
#############################


sudo add-apt-repository --yes ppa:kicad/kicad-6.0-releases
sudo apt update
sudo apt install --install-recommends -y kicad




#############################
# instala vainas academicas 
#############################

# rstudio
#sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
#sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

#sudo apt install r-base
#cd ~/Downloads
#wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2022.02.0-443-amd64.deb
#sudo apt install -y ./rstudio-2022.02.0-443-amd64.deb
#rm ./rstudio-2022.02.0-443-amd64.deb

# wireshark
#sudo apt install -y wireshark

#################################
# ejecuta algunas cosas al final
#################################

$DOWNLOADS_FOLDER/Telegram/Telegram




