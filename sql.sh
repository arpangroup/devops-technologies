#!/bin/bash




DB="mydb"
USER="root"
PASS="password@123"

mysql -uroot -prootpassword -e "CREATE DATABASE $DB CHARACTER SET utf8 COLLATE utf8_general_ci";
mysql -uroot -prootpassword -e "CREATE USER $USER@'127.0.0.1' IDENTIFIED BY '$PASS'";
mysql -uroot -prootpassword -e "GRANT SELECT, INSERT, UPDATE ON $DB.* TO '$USER'@'127.0.0.1'";


mysql -uroot -ppassword@123 -e "CREATE DATABASE test_db1 CHARACTER SET utf8 COLLATE utf8_general_ci";
mysql -uroot -ppassword@123 -e "show databases"

# *********************************************************************************
DB_DATABASE=pureeats_test
DB_USERNAME=root
DB_ROOT_PASSWORD=rootpassword

DB_USER_PUREEATS=arpan
DB_USER_PUREEATS_PASSWORD=arpan@123

mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE DATABASE $DB_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "show databases"
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "CREATE USER $DB_USER_PUREEATS@'127.0.0.1' IDENTIFIED BY '$DB_USER_PUREEATS_PASSWORD'";
mysql -u$DB_USERNAME -p$DB_ROOT_PASSWORD -e "GRANT SELECT, INSERT, UPDATE ON $DB_DATABASE.* TO '$DB_USER_PUREEATS'@'127.0.0.1'";
# *********************************************************************************

mysql -uroot -prootpassword -e "show databases"