#!/bin/bash
# https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04

DOMAIN_NAME=$1
INDEX_FILE_CONTENT="Hello Pureeats"
IS_DEBUG_ENABLED=true
WEB_ROOT=/var/www

RED="31"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
ENDCOLOR="\e[0m"


echo "$BGreen[Apache : 1/10]$Color_Off Installing Apache2 & other packages............................"
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


# [:] List all currently available UFW application profiles:
# sudo ufw app list
# [:] If you look at the Apache Full profile details, you’ll see that it enables traffic to ports 80 and 443:
# sudo ufw app info "Apache Full"

# Only allow traffic on port 80, use the Apache profile....Adjusting the firewall settings to allow HTTP traffic
echo "$BGreen[Apache : 2/10]$Color_Off Adjusting the firewall settings to allow HTTP traffic........."
sudo ufw allow "Apache Full"

# # Show current firewall status
# sudo ufw status

echo '[Apache : 3/10] Enabling the apache service....'
sudo systemctl enable apache2

echo "$BGreen[Apache : 4/10]$Color_Off Updating apache config....."
cat << EOF >/etc/apache2/sites-available/$DOMAIN_NAME.conf
<VirtualHost *:80>
    ServerName $DOMAIN_NAME
    ServerAlias www.$DOMAIN_NAME
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/$DOMAIN_NAME
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF


#cp /etc/apache2/sites-available/000-default-ssl.conf /etc/apache2/sites-available/$DOMAIN_NAME.ssl.conf
# cat << EOF >/etc/apache2/sites-available/$DOMAIN_NAME.ssl.conf
# <IfModule mod_ssl.c>
#     <VirtualHost *:443>
#         ServerAdmin $DOMAIN_NAME
#         ServerAlias www.$DOMAIN_NAME
#         ServerAdmin webmaster@localhost
#         DocumentRoot /var/www/$DOMAIN_NAME
# 	    ErrorLog ${APACHE_LOG_DIR}/error.log
#         CustomLog ${APACHE_LOG_DIR}/access.log combined
	    
#         SSLEngine On
#  	    SSLCertificateFile      /etc/ssl/certs/ssl-cert-snakeoil.pem
#         SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key
        
#         <FilesMatch "\.(cgi|shtml|phtml|php)$">
#             SSLOptions +StdEnvVars
#         </FilesMatch>
#         <Directory /usr/lib/cgi-bin>
#             SSLOptions +StdEnvVars
#         </Directory>        
#     </VirtualHost>
# </IfModule>
# EOF



# Restart Apache  
echo "$BGreen[Apache : 5/10]$Color_Off Restarting and enabling Apache Server...."
sudo service apache2 restart 
echo "$GREEN Enabling a2ensite for $Color_Off $DOMAIN_NAME"
sudo a2ensite $DOMAIN_NAME
sudo a2dissite 000-default
sudo systemctl reload apache2

# Activate the module
sudo a2enmod rewrite
systemctl restart apache2


# Creating the web root path and set the permissions
echo "$BGreen[Apache : 6/10]$Color_Off Creating the web root path and set the permissions...."
sudo mkdir -p $WEB_ROOT/$DOMAIN_NAME
# Set Permissions  
echo "$BGreen[Apache : 7/10]$Color_Off Set Permissions to WebRoot($WEB_ROOT/$DOMAIN_NAME)....."
sudo chown -R www-data:www-data $WEB_ROOT
sudo chown -R $USER:$USER $WEB_ROOT/$DOMAIN_NAME

# Creating the index.html file
echo "$BGreen[Apache : 8/10]$Color_Off Generating inex.html, test.php file"
echo "$INDEX_FILE_CONTENT" > $WEB_ROOT/$DOMAIN_NAME/index.html
echo "<?php phpinfo(); ?>" > $WEB_ROOT/$DOMAIN_NAME/test.php

echo "$BGreen[Apache : 9/10]$Color_Off reload apache service"
sudo service apache2 restart

echo "$BGreen[Apache : 10/10]$Color_Off status of apache service " 
APACHE_VERSION=apache2 -v | grep -Po '(?<=Server version: Apache/)[^?]+'
apache2 -v


echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
echo "                Apache Server installed successfully "
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"

# Prompt to continue
# echo "Do you want to configure apache with the doimain $BOLDGREEN $DOMAIN_NAME $Color_Off";
# while true; do
# 	read -p "Continue [Y/N]? " cnt1
# 	case $cnt1 in
# 		"") break;;
# 		[Yy]* ) break;;
# 		[Nn]* ) exit;;
# 		* ) printf "Please answer Y or N\n";;
# 	esac
# done


#########################################################################################
# Troubleshoot: 404 not found
# sudo nano /etc/apache2/apache2.conf

# Here in apache2.conf change
# <Directory /var/www/>
#      Options Indexes FollowSymLinks
#      AllowOverride None
#      Require all granted
# </Directory>
# 
# to
# 
# <Directory /var/www/>
#         Options Indexes FollowSymLinks
#         AllowOverride All
#         Require all granted
# </Directory>  

# sudo a2enmod rewrite
# systemctl restart apache2

