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
service apache2 restart
#open localhost/phpmyadmin with root and your pass 

#show error
echo $'\nedit two line in sudo gedit /etc/php/7.0/apache2/php.ini\ndisplay_errors = on\ndisplay_startup_errors = on\n and save file\n'
service apache2 restart
