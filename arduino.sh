#!/bin/sh
# First download Arduino 1.8.1 (NOT 1.8.2 because have bug) zip in /home/yourUser/Downloads

sudo apt-get update
cd ~/Downloads    
tar -xvf arduino-1.8.11-linux64.tar.xz    
sudo mv arduino-1.8.11 /opt    
cd /opt/arduino-1.8.11/    
chmod +x install.sh    
./install.sh   

#manual put in: File/Prefernces/Additional Board Manager URLs: http://arduino.esp8266.com/stable/package_esp8266com_index.json
#Arduino IDE Tools/Board/Board Manager and install package (in my case esp8266 by ESP8266 Community)
echo $'- For continu install:'
echo $' need make some setting in Arduino IDE, after which we will proceed with the installation dependencies on github'
echo $' First open Arduino IDE and put in Menu File/Prefernces/Additional Board Manager: http://arduino.esp8266.com/stable/package_esp8266com_index.json'
echo $' and in Menu Tools/Board/Board Manager click and install package (in my case esp8266 by ESP8266 Community)'
echo $' after return to terminal and press y'
echo $'- For exit to install: press '

read pa
if [ "$pa" != "y" ]; then
  exit;
fi

#copy library from git
cd ~/Arduino
mkdir hardware
cd hardware
mkdir esp8266com
cd esp8266com
git clone https://github.com/esp8266/Arduino.git esp8266

#IMPORTANT don't foget to make writable ttyUSB0: sudo chmod a+rw /dev/ttyUSB0
