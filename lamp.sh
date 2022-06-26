#!/bin/bash
#######################################################
# Bash script to install an LAMP stack in ubuntu  
# Author: Subhash (arpan)  
#######################################################  
ROOT_DIR=./.scripts
SCRIPT_DIR=${ROOT_DIR}/ubuntu
. ./.scripts/env.sh # [ Note: There is a space between the two dots(.) ]
. ./config.sh # [ Note: There is a space between the two dots(.) ]


# Step-1: Updating Apt Packages
printf "\n\n${BOLDGREEN} Updating Apt Packages and upgrading latest patches.........${ENDCOLOR}\n"
sudo apt update -qq -y && \
    # sudo apt upgrade -qq --force-yes &&

# Step-2: Installing Apache2
printf "\n\n${BOLDGREEN} Installing Apache2 & other packages.........................${ENDCOLOR}\n"
sh ${SCRIPT_DIR}/apache.sh $DOMAIN_NAME

# Step-3: Installing MySql
printf "\n\n${BOLDGREEN} Installing MySql............................................${ENDCOLOR}\n"
echo "DB_NAME : $DB_DATABASE"
echo "username: $DB_USERNAME"
echo "Password: $DB_ROOT_PASSWORD"
sh ${SCRIPT_DIR}/mysql.sh $DB_DATABASE $DB_USERNAME $DB_ROOT_PASSWORD