#!/bin/bash

#######################################################
DIVIDER="\n**************************************************\n\n"
RED="31"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
ENDCOLOR="\e[0m"



# Check if running as root  
# if [ "$(id -u)" != "0" ]; then  
#     echo "This script must be run as root" 1>&2  
#     exit 1  
# fi  