##########################
# instala telegram
##########################

cd ~/Downloads
wget https://telegram.org/dl/desktop/linux
tar -xf linux 
rm linux

##########################
# instala brave
##########################

sudo apt install -y apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt install -y brave-browser

##########################
# instala chrome 
##########################

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome*.deb
rm ./google-chrome*.deb
cd


##########################
# instala arduino  
##########################

cd ~/Downloads
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz

tar -xf ./arduino*.tar.xz
rm  ./arduino*.tar.xz

cd ./arduino*
./arduino-linux-set-up.sh
sudo ./install.sh

##########################
# instala discord
##########################

cd ~/Downloads
wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
sudo apt install ./discord.deb
rm ./discord.deb



##########################
# instala spotify
##########################

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sou

sudo apt-get update && sudo apt-get install -y spotify-client


#########################
# instala anaconda
#########################

cd ~/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
bash ./Anaconda*.sh

conda activate base
conda install jupyter matplotlib numba scipy tensorflow 
rm ./Anaconda*.sh

#############################
# instala  zoom
#############################


cd ~/Downloads
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install -y ./zoom*.deb

rm ./zoom*.deb

#############################
# instala write 
#############################

cd ~/Downloads 
wget http://www.styluslabs.com/download/write-tgz
tar -xf write-tgz
rm write-tgz
cd Write
./setup.sh

#############################
# instala todoist
##############################

cd ~/Downloads 

wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-lite-2.2.0-travis995-0f91801-x86_64.AppImage

chmod 777 ./appimagelauncher*
./appimagelauncher-lite-*.AppImage install

wget https://todoist.com/linux_app/appimage
mv appimage ./todoist
mv ./todoist ~/Applications

rm ./appimagelauncher*.AppImage



#############################
# instala todoist
##############################

cd ~/Downloads 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install -y ./google-chrome-stable*.deb
rm  ./google-chrome-stable*.deb
cd

#############################
# instala Notion 
##############################

cd ~/Downloads 
wget https://github.com/notion-enhancer/notion-repackaged/releases/download/v2.0.18-1/Notion-2.0.18-1.AppImage
mv Notion*.AppImage ~/Applications
cd 

#############################
# instala vainas academicas 
#############################

# rstudio
cd ~/Downloads
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2022.02.0-443-amd64.deb
sudo apt install -y ./rstudio-2022.02.0-443-amd64.deb
rm ./rstudio-2022.02.0-443-amd64.deb


# wireshark
sudo apt install -y wireshark






