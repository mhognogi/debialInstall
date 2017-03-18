#!/bin/sh
# First download Arduino zip in /home/yourUser/Downloads

sudo apt-get update
cd ~/Downloads    
tar -xvf arduino-1.*.tar.xz    
sudo mv arduino-1.*.1 /opt    
cd /opt/arduino-1.*.1/    
chmod +x install.sh    
./install.sh  

read pa
echo 
echo "- For continu install"
echo "need make some setting in Arduino IDE, after which we will proceed with the installation dependencies on github"
echo "for contunuu open Arduino IDE and put in Menu File/Prefernces/Additional Board Manager: "
echo "http://arduino.esp8266.com/stable/package_esp8266com_index.json"
echo "and in Menu Tools/Board/Board Manager click and install package (in my case esp8266 by ESP8266 Community)"
echo "after close Arduino IDE and press y in terminal"
echo 
echo "- For exit to install press n"
#manual put in: File/Prefernces/Additional Board Manager URLs: http://arduino.esp8266.com/stable/package_esp8266com_index.json
#Arduino IDE Tools/Board/Board Manager and install package (in my case esp8266 by ESP8266 Community)
if [ "$pa" == "y" ]; then
echo "Continuu with git dependece";
else
exit;
fi

cd ~/Arduino
mkdir hardware
cd hardware
mkdir esp8266com
cd esp8266com
git clone https://github.com/esp8266/Arduino.git esp8266
