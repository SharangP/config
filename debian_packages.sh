#!/bin/bash


sudo add-apt-repository ppa:kilian/f.lux

sudo apt-get update

sudo apt-get install curl silversearcher-ag vim vlc python-pip htop fluxgui xclip

#chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
