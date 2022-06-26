#!/bin/bash
#######################################################
# Bash script to install an LAMP stack in ubuntu  
# Author: Subhash (arpan)  
#######################################################  
ROOT_DIR=./.scripts
SCRIPT_DIR=${ROOT_DIR}/ubuntu
. ${ROOT_DIR}/env.sh # [ Note: There is a space between the two dots(.) ]
. ./config.sh # [ Note: There is a space between the two dots(.) ]
echo $DOMAIN_NAME


# Step-1: Updating Apt Packages
echo "${BOLDGREEN}\n\n\n [1/10] Updating Apt Packages and upgrading latest patches.........${ENDCOLOR}"
# sudo apt update -qq -y && sudo apt upgrade -qq --force-yes &&

# Step-2: Installing Apache2
echo "${BOLDGREEN}\n\n\n [2/10] Installing Apache2 & other packages.........${ENDCOLOR}"
echo "passing DomainName as : "
echo $DOMAIN_NAME
sh ${SCRIPT_DIR}/install-apache.sh $DOMAIN_NAME
