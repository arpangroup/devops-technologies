#!/bin/bash
#######################################################
# Bash script to install an LAMP stack in ubuntu  
# Author: Subhash (arpan)  
#######################################################  
ROOT_DIR=./.scripts
DB_PATH=./pureeats_test.sql
SCRIPT_DIR=${ROOT_DIR}/ubuntu
. $ROOT_DIR/env.sh # [ Note: There is a space between the two dots(.) ]
. ./config.sh # [ Note: There is a space between the two dots(.) ]


# Step-1: Updating Apt Packages
echo "${BGreen}################ Updating Apt Packages and upgrading latest patches ###################################${Color_Off}"
sudo apt update -qq -y && \
    # sudo apt upgrade -qq --force-yes &&

# Step-2: Installing Apache2
echo "${BGreen}################ Installing Apache2 & other package ###################################################${Color_Off}"
sh ${SCRIPT_DIR}/apache.sh $DOMAIN_NAME

# Step-2: Installing PHP
echo "${BGreen}################ Installing PHP #######################################################################${Color_Off}"
sh ${SCRIPT_DIR}/php.sh $PHP_VERSION

# Step-3: Installing MySql
echo "${BGreen}################ Installing MySql #####################################################################${Color_Off}"
ECHO $DB_PATH
sudo bash ${SCRIPT_DIR}/mysql.sh $DB_DATABASE $DB_USERNAME $DB_ROOT_PASSWORD $DB_PATH




# Step-3: Installing MySql
# echo "\n\n${BGreen}################ Installing MySql ##################################################################${Color_Off}"
# sh ${SCRIPT_DIR}/composer.sh $DB_DATABASE $DB_USERNAME $DB_ROOT_PASSWORD