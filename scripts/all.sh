#!/bin/sh

echo "Installing required packages"
apt-get install build-essential openssl libssl-dev curl

echo "Installing Git"
apt-get install git -y

echo "Installing Go"
apt-get install golang -y

echo "Installing httpie"
apt-get install httpie

#locale-gen UTF-8
#echo "Installing Zsh"
#sudo apt-get install zsh
#sudo chsh -s /bin/zsh vagrant
