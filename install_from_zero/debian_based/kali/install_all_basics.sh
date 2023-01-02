DOWNLOADS_FOLDER='/home/dave/Downloads'

###########################
#  instala update
###########################
sudo apt update && sudo apt -y full-upgrade

###########################
#  instala git
###########################
sudo apt install -y  git

###########################
# instala ngrok
##########################

cd $DOWNLOADS_FOLDER
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
sudo tar xvzf $DOWNLOADS_FOLDER/ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

###########################
#  instala kitty
###########################
sudo apt install -y kitty
cd 
rm -rf ~/.config/kitty

git clone https://github.com/dleyvacastro/dotfiles.git
cp -rf ~/dotfiles/.config/kitty ~/.config/
rm -rf ~/dotfiles


###########################
#  instala neo vim
###########################
sudo apt install -y nodejs
sudo pip3 install neovim

cd $DOWNLOADS_FOLDER
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install -y $DOWNLOADS_FOLDER/nvim-linux*.deb
rm $DOWNLOADS_FOLDER/nvim-linux*.deb

echo 'alias vim="nvim"' >> ~/.zshrc

cd ~/.config
rm -rf nvim 
git clone https://github.com/dleyvacastro/nvim.git



###########################
#  instala una nerdfont
###########################
mkdir 	~/.fonts
cd 	~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AnonymousPro.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/VictorMono.zip
unzip ./DejaVu*.zip
unzip ./AnonymousPro.zip
unzip ./Victor*.zip
rm ./AnonymousPro.zip
rm ./DejaVu*.zip
rm ./Victor*.zip
fc-cache -fv

cd

###########################
#  instala utilities 
###########################

sudo apt install -y htop



###########################
# instala github cli
###########################

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh


###########################
#  instala lsd
###########################

cd $DOWNLOADS_FOLDER
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install -y $DOWNLOADS_FOLDER/nvim-linux*.deb
rm $DOWNLOADS_FOLDER/nvim-linux*.deb

wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
sudo apt install -y $DOWNLOADS_FOLDER/lsd*.deb
rm $DOWNLOADS_FOLDER/lsd*.deb
cd

echo 'alias ls="lsd --color=auto"' >> ~/.zshrc

###########################
#  instala bat
###########################

cd $DOWNLOADS_FOLDER
wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat-musl_0.20.0_amd64.deb
sudo apt install -y $DOWNLOADS_FOLDER/bat*.deb
rm $DOWNLOADS_FOLDER/bat*.deb

echo 'alias cat="bat --color auto"' >> ~/.zshrc

cd

#############################################
#  instala rofi | manejador de menus cómodo
#############################################
sudo apt install -y rofi


###########################
#  Instala starship
###########################
#curl -sS https://starship.rs/install.sh | sh
#echo 'eval "$(starship init zsh)"' >> ~/.zshrc


###########################
# install venv 
###########################
pip install virtualenv


###########################
# autoswitch between virtualenvs
###########################
#https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv#how-it-works 

mkdir -p ~/.config/zsh/plugins/
cd ~/.config/zsh/plugins/

git clone https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv
echo 'source $HOME/.config/zsh/plugins/zsh-plugins/zsh-autoswitch-virtualenv/autoswitch_virtualenv.plugin.zsh' >> ~/.zshrc


############################
# Docker
############################
# https://computingforgeeks.com/install-docker-and-docker-compose-on-kali-linux/

sudo apt install -y curl gnupg2 apt-transport-https software-properties-common ca-certificates
[ -f /var/run/reboot-required ] && sudo reboot -f

# Import Docker GPG key used for signing Docker packages:
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg

# Add Docker repository which contain the latest stable releases of Docker CE.
echo "deb [arch=amd64] https://download.docker.com/linux/debian bullseye stable" | sudo tee  /etc/apt/sources.list.d/docker.list
sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io 

# This installation will add docker group to the system without any users.
# Add your user account to the group to run docker commands as non-privileged user.

sudo usermod -aG docker $USER
newgrp docker


############################
# linodes script 
############################

cd 
git clone https://github.com/dleyvacastro/dotfiles.git
sudo cp ~/dotfiles/linodes /usr/local/bin 
sudo ln -s /usr/local/bin/linodes linodes


############################
# instala dart 
############################
cd 
sudo apt-get install apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list

sudo apt-get update
sudo apt-get install dart
sudo apt install ninja-build pkg-config libgtk-3-dev


###########################
# instala latex completico
###########################

#sudo apt install -y texlive-latex-extra
#sudo apt-get install texlive-lang-spanish 


###################################
#  instala zsh junto con ohmyzsh
###################################

#sudo apt install -y zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#cd ~/.oh-my-zsh
#cd plugins
#git clone https://github.com/zsh-users/zsh-autosuggestions.git
#cd 


