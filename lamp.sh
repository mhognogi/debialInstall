#!/bin/sh

#install lamp
sudo apt-get update
sudo apt-get -y install mysql-server mysql-client
sudo apt-get install apache2
sudo apt-get -y install php7.0 libapache2-mod-php7.0
sudo service apache2 restart
sudo chown -R yourUSER: /var/www
sudo apt-cache search php7.0
sudo apt-get -y install php7.0-mysql php7.0-curl php7.0-gd php7.0-intl php-pear php-imagick php7.0-imap php7.0-mcrypt php-memcache  php7.0-pspell php7.0-recode php7.0-sqlite3 php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-mbstring php-gettext
sudo service apache2 restart

#enable ssl
sudo a2enmod ssl
sudo a2ensite default-ssl
service apache2 restart

#phpMyAdmin
sudo apt-get -y install phpmyadmin
sudo gedit /etc/apache2/apache2.conf
echo $'\nPlease include in file apache2.conf: Include /etc/phpmyadmin/apache.conf\n'
sudo service apache2 restart
#open localhost/phpmyadmin with root and your pass 

#show error
echo $'\nedit two line in sudo gedit /etc/php/7.0/apache2/php.ini\ndisplay_errors = on\ndisplay_startup_errors = on\n and save file\n'
sudo service apache2 restart

#xdebug
sudo apt-get install php-xdebug
echo $'\nPlease add in /etc/php/7.0/apache2/php.ini next line\nxdebug.remote_enable=1\nxdebug.remote_host=127.0.0.1\n'
echo $'xdebug.remote_connect_back=1\nxdebug.remote_port=9000\nxdebug.remote_handler=dbgp\nxdebug.remote_mode=req\n'
echo $'xdebug.remote_autostart=true\nand save'
sudo gedit /etc/php/7.0/apache2/php.ini

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
