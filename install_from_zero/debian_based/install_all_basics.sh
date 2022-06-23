###########################
#  instala update
###########################
sudo apt-get update

###########################
#  instala vim
###########################
sudo apt install -y vim 

###########################
#  instala neo vim
###########################
cd ~/Downloads
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt install -y ./nvim-linux*.deb
cd


###########################
#  instala una nerdfont
###########################
mkdir 	~/.fonts
cd 	~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/AnonymousPro.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip
unzio ./DejaVu*.zip
unzip ./AnonymousPro.zip
rm ./AnonymousPro.zip
rm ./DejaVu*.zip
fc-cache -fv

cd



###########################
#  instala git
###########################

sudo apt install -y  git


###################################
#  instala zsh junto con ohmyzsh
###################################

sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh
cd plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
cd 


###########################
#  instala utilities 
###########################

sudo apt install -y htop

###########################
# instala latex completico
###########################

sudo apt install -y texlive-full


###########################
# instala github cli
###########################

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

###########################
#  instala terminator 
###########################

sudo apt install -y terminator


###########################
#  instala lsd
###########################

cd ~/Downloads
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
sudo apt install -y ./lsd*.deb
rm ./lsd*.deb
cd


###########################
#  instala bat
###########################

cd ~/Downloads
wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat-musl_0.20.0_amd64.deb
sudo apt install -y ./bat*.deb
rm ./bat*.deb
cd





###########################
#  instala unos fonts 
###########################
cd ~/Downloads

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts



