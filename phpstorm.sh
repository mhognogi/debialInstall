#!/bin/sh
#install phpStorm from PhpStorm-2017.1.1.tar.gz

cd ~/Downloads
#wget http://download-cf.jetbrains.com/webide/PhpStorm-201*.tar.gz
sudo tar xf PhpStorm-*.tar.gz -C /opt/
sudo tar xf datagrip-201*.tar.gz -C /opt/
lscd /opt/PhpStorm-*/bin
./phpstorm.sh
