#!/bin/sh
#install phpStorm from PhpStorm-2016.3.3.tar.gz

cd ~/Downloads
wget http://download-cf.jetbrains.com/webide/PhpStorm-2016.3.3.tar.gz
sudo tar xf PhpStorm-*.tar.gz -C /opt/
cd /opt/PhpStorm-*/bin
./phpstorm.sh
