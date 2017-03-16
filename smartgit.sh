#!/bin/sh

#install gedebi
sudo apt-get install gdebi

#install smartgit-17_0_1
sudo apt-get update
cd ~/Downloads
wget http://www.syntevo.com/static/smart/download/smartgit/smartgit-17_0_1.deb
sudo tar xf smartgit-linux-17_0_2.tar.gz -C /opt/

#open smartgit
sh /opt/smartgit/bin/smartgit.sh
