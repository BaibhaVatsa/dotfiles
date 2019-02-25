#!usr/bin/env/basv

# create folders
mkdir code
cd code

# python
sudo apt-get -q install python3
pip3 -q install matplotlib numpy scipy beautifulsoup4 opencv-python opencv-contrib-python

# entr
sudo apt-get -q install entr

# cipher and stuff
# stegsolve and stuff?
# vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# gitkraken
wget "https://release.gitkraken.com/linux/gitkraken-amd64.deb" -q
./gitkraken-amd64.deb 

# normal code
# slack

# pull repos if called with arguments
# vlc
# vim
sudo apt-get install vim

# discord
# vmware player
# wireshark
# tixati
wget "https://download2.tixati.com/download/tixati_2.58-1_amd64.deb"
./tixati_2.58-1_amd64.deb

# IDEs?
# search for more tools you use not in gtfobins
# chrome?
# tor
# setup wallpaper
# setup icons and shit
# opencv
# ros
# mathematica?
# spotify
# node js
# npm
# go
# prolog
# dart
# tensorflow
pip3 install tensorflow tensorflow-gpu

# ida
# chromium?
# radare2
git pull "https://github.com/radare/radare2.git"

# set up file paths and shit

# git credentials

# ls
# gedit?
# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# cmake
# gradle
# keyboard
# egrep
#