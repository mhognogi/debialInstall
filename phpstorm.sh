#!/bin/sh
#install phpStorm from PhpStorm-2017.1.1.tar.gz

cd ~/Downloads
wget http://download-cf.jetbrains.com/webide/PhpStorm-2017.1.1.tar.gz
sudo tar xf PhpStorm-*.tar.gz -C /opt/
cd /opt/PhpStorm-*/bin
./phpstorm.sh
