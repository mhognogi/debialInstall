#!/bin/sh

#install lamp
sudo apt-get update
sudo apt-get -y install mysql-server mysql-client
sudo apt-get install apache2

#5.6
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6
sudo apt-get install php5.6-gd php5.6-mysql php5.6-dom php5.6-cli php5.6-json php5.6-common php5.6-mbstring php5.6-opcache php5.6-readline

#7.0
sudo apt-get update
sudo apt-get -y install php7.0 libapache2-mod-php7.0
sudo service apache2 restart
sudo chown -R yourUSER: /var/www
sudo apt-cache search php7.0
sudo apt-get -y install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext
sudo service apache2 restart

#7.2
sudo apt-get install software-properties-common python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common
sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip
php -v

#enable ssl
sudo a2enmod ssl
sudo a2ensite default-ssl
service apache2 restart

#phpMyAdmin
sudo apt-get -y install phpmyadmin
sudo gedit /etc/apache2/apache2.conf
Include /etc/phpmyadmin/apache.conf\n'
sudo service apache2 restart
#open localhost/phpmyadmin with root and your pass 

#show error 5.6
#sudo gedit /etc/php/5.6/apache2/php.ini
# display_errors = on; display_startup_errors = on;

#show error 7
echo $'\nedit two line in sudo gedit /etc/php/7.0/apache2/php.ini\ndisplay_errors = on\ndisplay_startup_errors = on\n and save file\n'
sudo service apache2 restart

#xdebug
sudo apt-get install php-xdebug
edit /etc/php/7.0/apache2/php.ini 
xdebug.remote_enable=1
xdebug.remote_host=127.0.0.1
xdebug.remote_connect_back=1
xdebug.remote_port=9000
xdebug.remote_handler=dbgp
xdebug.remote_mode=req
xdebug.remote_autostart=true

#for redirect .htaccess vhost
sudo a2enmod rewrite
sudo nano /etc/apache2/sites-available/000-default.conf
#add lines
#ServerName localhost
#ServerAdmin webmaster@localhost
#DocumentRoot /var/www/html/project/public
#<Directory "/var/www/html">
#  AllowOverride All
#</Directory>
#sudo gedit /etc/hosts
sudo service apache2 restart


#apache
apt-get install apache2
nano /etc/apache2/apache2.conf
systemctl restart apache2
#mysql
sudo apt-get update
sudo apt-get install mysql-server
mysql_secure_installation
systemctl status mysql.service
#php 5.6
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php5.6
sudo a2enmod php5.6
systemctl restart apache2

