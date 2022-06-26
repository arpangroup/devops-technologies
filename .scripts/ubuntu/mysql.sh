#!/usr/bin/bash

DB_NAME=$1
DB_USERNAME=$2
DB_ROOT_PASSWORD=$3
DB_USER_PUREEATS="pureeats"
DB_USER_PUREEATS_PASSWORD="password@123"

echo "$BGreen[MySql : 1/5]$Color_Off Installing MySql.................................."
export DEBIAN_FRONTEND="noninteractive"  
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DB_ROOT_PASSWORD"  
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DB_ROOT_PASSWORD" 
sudo apt install -y mysql-server
# sudo apt install -y mmysql-client


echo "$BGreen[MySql : 2/5]$Color_Off Run the MySQL Secure Installation wizard.........."
# Run the MySQL Secure Installation wizard, this will ask if you want to configure the validate password plugin
# sudo mysql_secure_installation
# sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' /etc/mysql/my.cnf
# mysql -uroot -p -e 'USE mysql; UPDATE `user` SET `Host`="%" WHERE `User`="root" AND `Host`="localhost"; DELETE FROM `user` WHERE `Host` != "%" AND `User`="root"; FLUSH PRIVILEGES;'
echo "skip"

echo "$BGreen[MySql : 3/5]$Color_Off Restarting MySql.................................."
service mysql restart

echo "$BGreen[MySql : 4/5]$Color_Off Creating mysql user & grant permissions..........."
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE DATABASE test_db";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE DATABASE $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "show databases"
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE USER $DB_USER_PUREEATS@'127.0.0.1' IDENTIFIED BY '$DB_USER_PUREEATS_PASSWORD'";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "GRANT SELECT, INSERT, UPDATE ON $DB_NAME.* TO '$DB_USER_PUREEATS'@'127.0.0.1'";

echo "$BGreen[MySql : 5/5]$Color_Off Importing the test database schena.................................."
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e test_db < ./test_db.sql


echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
echo "                 Mysql Server installed successfully "
mysql --version
echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
echo "${BGreen}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${Color_Off}"
