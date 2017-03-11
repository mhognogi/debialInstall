#!/bin/sh
# First download Arduino zip

echo "start install Arduiono..."

cd ~/Downloads    
tar -xvf arduino-1.*.tar.xz    
sudo mv arduino-1.*.1 /opt    
cd /opt/arduino-1.*.1/    
chmod +x install.sh    
./install.sh    

echo "instaled Arduino succes"
exit
