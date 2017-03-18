#!/bin/sh
# First download Arduino zip in /home/yourUser/Downloads

sudo apt-get update
cd ~/Downloads    
tar -xvf arduino-1.*.tar.xz    
sudo mv arduino-1.*.1 /opt    
cd /opt/arduino-1.*.1/    
chmod +x install.sh    
./install.sh  

#manual put in: File/Prefernces/Additional Board Manager URLs: http://arduino.esp8266.com/stable/package_esp8266com_index.json
#Arduino IDE Tools/Board/Board Manager and install package (in my case esp8266 by ESP8266 Community)

cd ~/Arduino
mkdir hardware
cd hardware
mkdir esp8266com
cd esp8266com
git clone https://github.com/esp8266/Arduino.git esp8266
