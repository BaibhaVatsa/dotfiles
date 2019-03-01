#!usr/bin/env/bash

# create folders
echo "Creating directory named code..."
mkdir code
cd code

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
sudo apt-get install binwalk

# bsdgames
echo "Installing bsdgames..."
sudo apt-get install bsdgames

# java
echo "Installing Default JDK..."
sudo apt-get install default-jdk

# ffmpeg
echo "Installing ffmpeg..."
sudo apt-get -q install ffmpeg

# python
echo "Installing Python 3..."
sudo apt-get -q install python3

# pip
echo "Installing pip..."
wget "https://bootstrap.pypa.io/get-pip.py" -q
python3 get-pip.py

# python packages
echo "Installing matplotlib, numpy, scipy..."
pip3 -q install matplotlib numpy scipy
echo "Installing beautifulsoup4..."
pip3 -q install beautifulsoup4
echo "Installing opencv-python and opencv-contrib-python..."
pip3 -q install opencv-python opencv-contrib-python

# entr
echo "Installing entr..."
sudo apt-get -q install entr

# vscode
echo "Installing VS Code..."
wget "https://packages.microsoft.com/keys/microsoft.asc" -q | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# gitkraken
echo "Installing GitKraken..."
wget "https://release.gitkraken.com/linux/gitkraken-amd64.deb" -q
./gitkraken-amd64.deb 

# vlc
echo "Installing VLC..."
sudo apt-get install vlc

# vim
echo "Installing Vim..."
sudo apt-get install vim

# discord
echo "Installing Discord..."
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" -q
sudo dpkg -i ~/code/discord.deb

# tixati
echo "Installing Tixati..."
wget "https://download2.tixati.com/download/tixati_2.58-1_amd64.deb"
./tixati_2.58-1_amd64.deb

# tor
echo "Installing Tor..."
deb https://deb.torproject.org/torproject.org bionic main
deb-src https://deb.torproject.org/torproject.org bionic main
wget "https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc" | gpg --import
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
sudo apt-get update
sudo apt-get install tor deb.torproject.org-keyring

# tensorflow
echo "Installing Tensorflow..."
pip3 install tensorflow tensorflow-gpu

# chromium
echo "Installing Chromium Browser..."
sudo apt-get install chromium-browser

# radare2
echo "Installing Radare2..."
git pull "https://github.com/radare/radare2.git"

# gedit
echo "Installing gedit..."
sudo apt-get install gedit

# spotify
echo "Installing Spotify..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# apt-rdepends
echo "Installing apt-rdepends..."
sudo apt-get install apt-rdepends

# ros
echo "Installing ROS..."
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt update
sudo apt install ros-melodic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

# nodejs and npm
echo "Installing Node.js 10.x..."
curl -q -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get update -q
sudo apt-get install -y nodejs -q
echo "Installing build tools..."
sudo apt-get install -y build-essential -1
node -v

# prolog
wget "http://www.gprolog.org/gprolog-1.4.5.tar.gz" -q 
tar -xvzf ./gprolog-1.4.5.tar.gz -q

# dart
echo "Installing dart..."
sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update
sudo apt-get install dart
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

# thefuck
echo "Installling thefuck..."
pip3 install thefuck
echo 'eval $(thefuck --alias)' >> ~/.bashrc
source ~/.bashrc

# go
# slack
# IDEs?
# set up file paths and shit
# add shit to .bashrc
# stegsolve and stuff?
# vmware player
# wireshark
# gradle
# ida
# setup wallpaper
# setup icons and shit
# opencv
# mathematica?
# requests
echo "Installing requests..."
pip3 install requests

echo "Successfully done..."
exit
