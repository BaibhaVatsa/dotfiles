#!usr/bin/env/bash

# create folders
echo "Creating directory named code..."
mkdir code
cd code

# wget
echo "Installing wget..."
sudo apt-get install wget -q

# git
echo "Installing git..."
sudo apt-get install git-all -q

# curl
echo "Installing curl..."
sudo apt-get install curl -q

# exiftool
echo "Installing exiftool..."
sudo apt-get install libimage-exiftool-perl -q

# python-pil
echo "Installing Pillow..."
pip3 install Pillow

# sqlitebrowser
echo "Installing SQLite Browser..."
sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser -q
sudo apt-get update -q
sudo apt-get install sqlitebrowser -q

# electron
echo "Installing Electron..."
npm i -D electron@latest

# xclip
echo "Installing xclip..."
sudo apt-get install xclip -q

# colorama
echo "Installing Colorama..."
pip3 install colorama

# binwalk
echo "Installing binwalk..."
sudo apt-get install binwalk -q

# bsdgames
echo "Installing bsdgames..."
sudo apt-get install bsdgames -q

# java
echo "Installing Default JDK..."
sudo apt-get install default-jdk -q

# ffmpeg
echo "Installing ffmpeg..."
sudo apt-get -q install ffmpeg

# python
echo "Installing Python 3..."
sudo apt-get -q install python3

# pip
echo "Installing pip..."
wget "https://bootstrap.pypa.io/get-pip.py" -q
chmod +x get-pip.py
python3 get-pip.py

# python packages
echo "Installing matplotlib, numpy, scipy..."
pip3 -q install matplotlib numpy scipy
echo "Installing beautifulsoup4..."
pip3 -q install beautifulsoup4
echo "Installing opencv-python and opencv-contrib-python..."
pip3 -q install opencv-python opencv-contrib-python python-opencv

# entr
echo "Installing entr..."
sudo apt-get -q install entr

# vscode
echo "Installing VS Code..."
wget https://packages.microsoft.com/keys/microsoft.asc -q | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ -q
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -q
sudo apt-get update -q
sudo apt-get install code -q

# gitkraken
echo "Installing GitKraken..."
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -q
chmod +x gitkraken-amd64.deb
./gitkraken-amd64.deb 

# vlc
echo "Installing VLC..."
sudo apt-get install vlc -q

# vim
echo "Installing Vim..."
sudo apt-get install vim -q

# discord
echo "Installing Discord..."
wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb -q
sudo dpkg -i ~/code/discord.deb

# tixati
echo "Installing Tixati..."
wget https://download2.tixati.com/download/tixati_2.58-1_amd64.deb
./tixati_2.58-1_amd64.deb

# tor
echo "Installing Tor..."
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
wget https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
sudo apt-get update -q
sudo apt-get install tor deb.torproject.org-keyring -q

# tensorflow
echo "Installing Tensorflow..."
pip3 install tensorflow tensorflow-gpu

# chromium
echo "Installing Chromium Browser..."
sudo apt-get install chromium-browser -q

# radare2
echo "Installing Radare2..."
mkdir r2 && cd r2
git pull https://github.com/radare/radare2.git
sudo ./radare2/sys/install.sh
cd ..

# gedit
echo "Installing gedit..."
sudo apt-get install gedit -q

# spotify
echo "Installing Spotify..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -q
sudo apt-get install spotify-client -q

# apt-rdepends
echo "Installing apt-rdepends..."
sudo apt-get install apt-rdepends -q

# ros
echo "Installing ROS..."
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt install ros-melodic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo "source /opt/ros/melodic/setup.bash" >> ~/.zshrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -q

# nodejs and npm
echo "Installing Node.js 10.x..."
curl -q -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get update -q
sudo apt-get install -y nodejs -q
echo "Installing build tools..."
sudo apt-get install -y build-essential -q
node -v

# prolog 
echo "Installing prolog..."
wget http://www.gprolog.org/gprolog-1.4.5.tar.gz -q 
tar -xvzf ./gprolog-1.4.5.tar.gz -q

# thefuck
echo "Installling thefuck..."
pip3 install thefuck -q
echo 'eval $(thefuck --alias)' >> ~/.bashrc
echo 'eval $(thefuck --alias)' >> ~/.zshrc

# vmware player
echo "Installing VMWare Player..."
sudo apt install build-essential -q
wget https://www.vmware.com/go/getplayer-linux -q
chmod +x getplayer-linux
./getplayer-linux

# wireshark
echo "Installing wireshark..."
sudo add-apt-repository ppa:wireshark-dev/stable -q
sudo apt-get update -q 
sudo apt-get install wireshark -q

# ida
echo "Installing ida..."
wget https://out7.hex-rays.com/files/idafree70_linux.run -q 
chmod +x idafree70_linux.run
./idafree70_linux.run

# requests
echo "Installing requests..."
pip3 install requests -q

# go
echo "Installing go..."
wget https://golang.org/doc/install?download=go1.12.linux-amd64.tar.gz -q
sudo tar -C /usr/local -xzf go1.12.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile

# rustlang
echo "Installing rust..."
curl https://sh.rustup.rs -sSf | sh

# firefox
echo "Installing Firefox..."
sudo apt-get install firefox -q

# thunar
echo "Installing thunar..."
sudo apt-get install thunar

# zsh
echo "Installing zsh..."
sudo apt-get install zsh -q
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cat ~/.oh-my-zsh/templates/zshrc.zsh-template >> ~/.zshrc

# parcel
echo "Installing parcel..."
npm install -g parcel-bundler

# cmatrix
echo "Installing cmatrix..."
sudo apt-get install cmatrix -q

# amixer
echo "Installing alsa..."
sudo apt-get install alsa -q

# reactjs
echo "Installing ReactJS..."
sudo npm install -g babel-cli@6 babel-preset-react-app@3
sudo npm install -g react react-dom

# react native
echo "Installing React Native..."
sudo npm install -g react-native-cli

# install awesome
echo "Installing awesome..."
sudo apt-get install awesome -q
mv ./awesome ~/.config/

# .bashrc and .zshrc
echo "Adding to .bashrc and .zshrc..."
echo 'alias launch_clion="sh ~/clion/bin/clion.sh"' >> ~/.bashrc
echo 'alias launch_pycharm="sh ~/pycharm/bin/pycharm.sh"' >> ~/.zshrc
echo 'alias launch_clion="sh ~/clion/bin/clion.sh"' >> ~/.zshrc
echo 'alias launch_pycharm="sh ~/pycharm/bin/pycharm.sh"' >> ~/.bashrc
cp build_vscode.py ~/
echo 'alias build_vscode="python ~/build_vscode.py"' >> ~/.bashrc
echo 'alias build_vscode="python ~/build_vscode.py"' >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo "timeout 2 cmatrix -ab &" >> ~/.bashrc
echo "timeout 2 cmatrix -ab &" >> ~/.zshrc
echo 'echo "Welcome back, "$USER"!"' >> ~/.bashrc
echo 'echo "Welcome back, "$USER"!"' >> ~/.zshrc

#zsh default shell
echo "Making zsh default shell..."
chsh -s $(which zsh)

# done
echo "Completed everything!"
echo "Restarting..."
sudo reboot
