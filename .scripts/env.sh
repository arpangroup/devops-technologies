#!/bin/bash
export DIVIDER="\n**************************************************\n\n"
export Color_Off='\033[0m'       # Text Reset
export Red='\033[0;31m'          # Red
export BGreen='\033[1;32m'       # Green

# Check if running as root  
if [ "$(id -u)" != "0" ]; then  
    echo "This script must be run as root" 1>&2  
    exit 1  
fi
