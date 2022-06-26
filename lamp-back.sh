#!/bin/bash

# sudo bash ./script.sh

# DB_CONNECTION=mysql
# DB_HOST=localhost
# DB_PORT=3306
DOMAIN_NAME="pureeats.in"
DB_DATABASE=pureeats_test
DB_USERNAME=root
DB_ROOT_PASSWORD=rootpassword
DB_USER_PUREEATS=arpan
DB_USER_PUREEATS_PASSWORD=arpan@123
DIVIDER="\n***************************************\n\n"

#######################################  
# Bash script to install an LAMP stack in ubuntu  
# Author: Subhash (arpan)  

# Check if running as root  
if [ "$(id -u)" != "0" ]; then  
    printf "This script must be run as root" 1>&2  
    exit 1  
fi  


printf $DIVIDER
printf "LAMP server setup on Ubuntu 16.04\n"
printf "Now the script will update Ubuntu and install all the necessary software.\n"
printf " *** You will be prompted to enter the password for the MySQL root user ***\n"
read -p "Please ENTER to continue "
printf $DIVIDER





# Prompt to continue
# while true; do
# 	read -p "Continue [Y/N]? " cnt1
# 	case $cnt1 in
# 		[Yy]* ) break;;
# 		[Nn]* ) exit;;
# 		* ) printf "Please answer Y or N\n";;
# 	esac
# done



# # Set the hostname
# printf $DIVIDER
# printf "HOSTNAME\n"
# printf "Pick a hostname that identify this server.\nRecommended: use the main domain, e.g. example.com\n"
# while true; do
# 	read -p "Hostname: " host
# 	case $host in
# 		"" ) printf "Hostname may not be left blank\n";;
# 		* ) break;;
# 	esac
# done
# echo "$host" > /etc/hostname
# hostname -F /etc/hostname
# printf "127.0.0.1       $host\n::1             $host\n" >> /etc/hosts;


# # Set the time zone
# printf $DIVIDER
# printf "TIME ZONE\n"
# printf "Please select the correct time zone. e.g. US > Eastern Time\n"
# read -p "Please ENTER to continue "
# dpkg-reconfigure tzdata






# Install and update software
printf "\n\nUpdating Apt Packages and upgrading latest patches\n"
sudo apt-get update -y
# apt-get -y install curl vim openssl git htop nload nethogs zip unzip sendmail sendmail-bin libcurl3-openssl-dev psmisc build-essential zlib1g-dev libpcre3 libpcre3-dev memcached fail2ban
sudo apt-get -y install curl vim openssl git htop zip unzip


## Step1: Install Apache  
printf "\n\nInstalling Apache2 Web server\n"
sudo apt-get install -y apache2
# sudo apt-get install -y apache2 apache2-doc apache2-utils
printf "List all currently available UFW application profiles:"
sudo ufw app list
printf "only allow traffic on port 80, use the Apache profile....Adjusting the firewall settings to allow HTTP traffic"
sudo ufw allow in "Apache"
sudo ufw status
sudo mkdir -p /var/www/$DOMAIN_NAME
# Set Permissions  
printf "Set Permissions to WebRoot(/var/www)....."
sudo chown -R www-data:www-data /var/www  
sudo chown -R $USER:$USER /var/www/$DOMAIN_NAME
sudo echo "Hello PureEats" > /var/www/html/hello.html
printf "Apache web server installed successfully"
printf '\n\n\nEnabling the services\n'
sudo systemctl enable apache2
# Restart Apache  
printf "\n\n\nRestarting Apache Server...."
sudo service apache2 restart 

printf "\n\n\nFUpdating apache config.....\n"
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

printf $DIVIDER
sudo mkdir -p /var/www/$DOMAIN_NAME
sudo echo "Hello PureEats" > /var/www/$DOMAIN_NAME/index.html
sudo echo "<?php phpinfo(); ?>" > /var/www/$DOMAIN_NAME/test.php
sudo chown -R www-data:www-data /var/www/$DOMAIN_NAME
sudo a2ensite $DOMAIN_NAME
sudo a2dissite 000-default
sudo systemctl reload apache2


## Step2: Install PHP 
printf $DIVIDER
printf "\n\n\n\nInstalling PHP & Requirements.......\n"
# sudo apt-get install libapache2-mod-php7.0 php7.0 php7.0-common php7.0-curl php7.0-dev php7.0-gd php-pear php7.0-mcrypt php7.0-mysql -y
# sudo apt-get install php libapache2-mod-php php-mysql -y

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
printf "\n\nSearching available PHP Versions\n"
sudo apt-cache search php
printf "\n\nSearching available PHP Versions\n"
# sudo apt-cache search php7.4 -y
sudo apt-get install -y php7.4 libapache2-mod-php7.4 php7.4-common php7.4-curl php7.4-mbstring php7.4-xmlrpc php7.4-mysql php7.4-gd php7.4-xml php7.4-intl php7.4-ldap php7.4-imagick php7.4-json php7.4-cli
sudo update-alternatives --set php /usr/bin/php7.4

# echo 'Installing php and its modules'
# apt install php-pear php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y
# echo 'php and its modules installed'


# Step3: Install MySQL database server  
# Install MySQL Server in a Non-Interactive mode. Default root password will be "root"
printf "\n\nInstalling MySQL\n"
# https://serversforhackers.com/c/installing-mysql-with-debconf
# Ask value for mysql root password   
# echo 'Enter mysql root password to continue:\n'
# read -p 'db_root_password [secretpasswd]: ' db_root_password  
export DEBIAN_FRONTEND="noninteractive"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $DB_ROOT_PASSWORD"  
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DB_ROOT_PASSWORD"  
# echo 'Installing Maria DB'
# apt install mariadb-server -y
# sudo mysql_secure_installation #This will ask if you want to configure the VALIDATE PASSWORD PLUGIN.
# apt-get install mysql-server mysql-client -y
sudo apt -y install mysql-server -y

# Run the MySQL Secure Installation wizard
# sudo mysql_secure_installation
# sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' /etc/mysql/my.cnf
# mysql -uroot -p -e 'USE mysql; UPDATE `user` SET `Host`="%" WHERE `User`="root" AND `Host`="localhost"; DELETE FROM `user` WHERE `Host` != "%" AND `User`="root"; FLUSH PRIVILEGES;'

service mysql restart
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE DATABASE $DB_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "show databases"
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE USER $DB_USER_PUREEATS@'127.0.0.1' IDENTIFIED BY '$DB_USER_PUREEATS_PASSWORD'";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "GRANT SELECT, INSERT, UPDATE ON $DB_DATABASE.* TO '$DB_USER_PUREEATS'@'127.0.0.1'";

# sudo add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe'
# sudo apt-get update
# sudo apt-get install mysql-common-5.6 mysql-client-5.6 mysql-server-5.6



# Step4:Enabling Mod Rewrite  

 
# sudo php5enmod mcrypt  

# ## Install PhpMyAdmin  
# echo "\n\nInstalling PhpMyAdmin....."
# sudo apt-get install phpmyadmin -y  
# ## Configure PhpMyAdmin  
# echo "\n\n\nConfigure PhpMyAdmin....."
# echo '\n\n\nInclude /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf  




printf "\n\n\nFind your Server’s Public IP Address\n"
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'






# systemctl enable mariadb

printf '\n\n\nFinally Checking status of services'
echo Apache service is $(systemctl show -p ActiveState --value apache2)
echo Maria DB service is $(systemctl show -p ActiveState --value mariadb) 
echo 'LAMP setup installed on ubuntu Successfully'





#  sudo chmod +x lamp.sh  
# sudo ./lamp.sh  

# php -v  
# http://localhost/phpmyadmin
# #For access MySQL use below command:
# mysql -u root -p   

# create database pureeats_test
# mysqldump -u username -p database_to_backup > backup_name.sql
# mysql -u username -p database_name < backup_name.sql
# mysql -uroot -p -e 'create database pureeats_test'
