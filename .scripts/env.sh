#!/bin/bash

#######################################################
export DIVIDER="\n**************************************************\n\n"
export RED="31"
export GREEN="32"
export BOLDGREEN="\e[1;${GREEN}m"
export ITALICRED="\e[3;${RED}m"
export ENDCOLOR="\e[0m"



Check if running as root  
if [ "$(id -u)" != "0" ]; then  
    echo "This script must be run as root" 1>&2  
    exit 1  
fi  