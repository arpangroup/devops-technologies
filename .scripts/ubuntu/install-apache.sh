DOMAIN_NAME=$1
INDEX_FILE_CONTENT="Hello Pureeats"
IS_DEBUG_ENABLED=true
WEB_ROOT=/var/www

RED="31"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
ENDCOLOR="\e[0m"
DIVIDER="\n{$BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


echo "[Apache : 1/5] Installing Apache2 & other packages............................"
sudo apt -y install apache2 \
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
printf "[Apache : 2/5] Adjusting the firewall settings to allow HTTP traffic.........\n"
sudo ufw allow "Apache Full"


echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"
echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"
echo "                Apache Server installed successfully"
echo $1
echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"
echo "${BOLDGREEN}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${ENDCOLOR}"

# Prompt to continue

echo "Do you want to configure apache with ${DOMAIN_NAME}";
while true; do
	read -p "Continue [Y/N]? " cnt1
	case $cnt1 in
		"") break;;
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) printf "Please answer Y or N\n";;
	esac
done
echo "............................................................................................."
echo "............................................................................................."
echo "............................................................................................."

# # Show current firewall status
sudo ufw status

# printf '\n\n\n[Apache : 3/5] Enabling the services\n'
sudo systemctl enable apache2

printf "\n\n[Apache : 4/5] Updating apache config.....\n"
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


# # Restart Apache  
# printf "\n\n\n[Apache : 5/5] Restarting Apache Server....\n"
# sudo service apache2 restart 

# printf "\n\n\nEnabling a2ensite for $DOMAIN_NAME/n"
# sudo a2ensite $DOMAIN_NAME
# sudo a2dissite 000-default
# sudo systemctl reload apache2


# # Creating the web root path and set the permissions
# printf "\n\n\n[Apache : 6/5] Creating the web root path and set the permissions....\n"
# sudo mkdir -p ${WEB_ROOT}/${DOMAIN_NAME}
# # Set Permissions  
# printf "[Apache : 7/5] Set Permissions to WebRoot({$WEB_ROOT}/{$DOMAIN_NAME}).....\n"
# sudo chown -R www-data:www-data ${WEB_ROOT}
# sudo chown -R $USER:$USER ${WEB_ROOT}/{$DOMAIN_NAME}

# # Creating the index.html file
# printf "[Apache : 8/10] creating inex.html and  test.php file \n"
# echo ${INDEX_FILE_CONTENT} > ${WEB_ROOT}/{$DOMAIN_NAME}/index.html
# echo "<?php phpinfo(); ?>" > ${WEB_ROOT}/$DOMAIN_NAME/test.php

# printf "[Apache : 9/10] reload apache service \n"
# sudo service apache2 restart

# printf "[Apache : 10/10] status of apache service \n" 
# APACHE_VERSION=apache2 -v | grep -Po '(?<=Server version: Apache/)[^?]+'
# apache2 -v
