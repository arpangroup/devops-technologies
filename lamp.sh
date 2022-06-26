#!/bin/bash
#######################################################
# Bash script to install an LAMP stack in ubuntu  
# Author: Subhash (arpan)  
#######################################################  
ROOT_DIR=./.scripts
SCRIPT_DIR=${ROOT_DIR}/ubuntu
. $ROOT_DIR/env.sh # [ Note: There is a space between the two dots(.) ]
. ./config.sh # [ Note: There is a space between the two dots(.) ]


# Step-1: Updating Apt Packages
echo "${BGreen}################ Updating Apt Packages and upgrading latest patches ###################################${Color_Off}"
sudo apt update -qq -y && \
    # sudo apt upgrade -qq --force-yes &&

# Step-2: Installing Apache2
echo "${BGreen}################ Installing Apache2 & other package ###################################################${Color_Off}"
sudo bash ${SCRIPT_DIR}/apache.sh $DOMAIN_NAME

# Step-2: Installing PHP
echo "${BGreen}################ Installing PHP #######################################################################${Color_Off}"
sudo bash ${SCRIPT_DIR}/php.sh $PHP_VERSION

# Step-3: Installing MySql
echo "${BGreen}################ Installing MySql #####################################################################${Color_Off}"
sudo bash ${SCRIPT_DIR}/mysql.sh $DB_DATABASE $DB_USERNAME $DB_ROOT_PASSWORD

# Step-4: Installing composer
echo "${BGreen}################ Installing composer ##################################################################${Color_Off}"
bash ${SCRIPT_DIR}/composer.sh $DB_DATABASE $DB_USERNAME $DB_ROOT_PASSWORD



# Prompt to continue
echo "Do you want to generate a new SSH key";
while true; do
	read -p "Continue [Y/N]? " cnt1
	case $cnt1 in
		"") break;;
		[Yy]* ) break;;
		[Nn]* ) exit;;
		* ) printf "Please answer Y or N\n";;
	esac
done


# Step-5: Generating SSH deploy key 
echo "${BGreen}################ Generating SSH Key ###################################################################${Color_Off}"
sudo bash ${SCRIPT_DIR}/generate-ssh-key.sh

