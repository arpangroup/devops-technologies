#!/bin/bash

DOMAIN_NAME=$1
INDEX_FILE_CONTENT="Hello Pureeats"
IS_DEBUG_ENABLED=true
WEB_ROOT=/var/www

RED="31"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
ENDCOLOR="\e[0m"


echo "$BOLDGREEN[Apache : 1/10]$ENDCOLOR Installing Apache2 & other packages............................"
sudo apt install -qq -y apache2 \
    software-properties-common \
    curl \
    zip \
    unzip \
    # apache2-doc \ 
    # apache2-mpm-prefork \
    # apache2-utils \
    # libexpat1 \
    # ssl-cert 


# List all currently available UFW application profiles:
# sudo ufw app list

# Only allow traffic on port 80, use the Apache profile....Adjusting the firewall settings to allow HTTP traffic
echo "$BOLDGREEN[Apache : 2/10]$ENDCOLOR Adjusting the firewall settings to allow HTTP traffic........."
sudo ufw allow "Apache Full"

# # Show current firewall status
# sudo ufw status

echo '[Apache : 3/10] Enabling the apache service....'
sudo systemctl enable apache2

echo "$BOLDGREEN[Apache : 4/10]$ENDCOLOR Updating apache config....."
cat << EOF >/etc/apache2/sites-available/$DOMAIN_NAME.conf
<VirtualHost *:80>
    ServerName $DOMAIN_NAME
    ServerAlias www.$DOMAIN_NAME.com 
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/$DOMAIN_NAME
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF


# Restart Apache  
echo "$BOLDGREEN[Apache : 5/10]$ENDCOLOR Restarting and enabling Apache Server...."
sudo service apache2 restart 
echo "$GREEN Enabling a2ensite for $ENDCOLOR $DOMAIN_NAME"
sudo a2ensite $DOMAIN_NAME
sudo a2dissite 000-default
sudo systemctl reload apache2


# Creating the web root path and set the permissions
echo "$BOLDGREEN[Apache : 6/10]$ENDCOLOR Creating the web root path and set the permissions...."
sudo mkdir -p $WEB_ROOT/$DOMAIN_NAME
# Set Permissions  
echo "$BOLDGREEN[Apache : 7/10]$ENDCOLOR Set Permissions to WebRoot($WEB_ROOT/$DOMAIN_NAME)....."
sudo chown -R www-data:www-data $WEB_ROOT
sudo chown -R $USER:$USER $WEB_ROOT/$DOMAIN_NAME

# Creating the index.html file
echo "$BOLDGREEN[Apache : 8/10]$ENDCOLOR Generating inex.html, test.php file"
echo "$INDEX_FILE_CONTENT" > $WEB_ROOT/$DOMAIN_NAME/index.html
echo "<?php phpinfo(); ?>" > $WEB_ROOT/$DOMAIN_NAME/test.php

echo "$BOLDGREEN[Apache : 9/10]$ENDCOLOR reload apache service"
sudo service apache2 restart

echo "$BOLDGREEN[Apache : 10/10]$ENDCOLOR status of apache service " 
APACHE_VERSION=apache2 -v | grep -Po '(?<=Server version: Apache/)[^?]+'
apache2 -v


echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"
echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"
echo "                Apache Server installed successfully "
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"
echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"

# Prompt to continue
echo "Do you want to configure apache with the doimain $BOLDGREEN $DOMAIN_NAME $ENDCOLOR";
while true; do
	read -p "Continue [Y/N]? " cnt1
	case $cnt1 in
		"") break;;
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) printf "Please answer Y or N\n";;
	esac
done
