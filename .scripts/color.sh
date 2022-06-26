#!/bin/bash

export RED="31"
export GREEN="32"
export BOLDGREEN="\e[1;${GREEN}m"
export ITALICRED="\e[3;${RED}m"
export ENDCOLOR="\e[0m"

# Reset
export Color_Off='\033[0m'       # Text Reset

export # Regular Colors
export BLACK='\033[0;30m'        # Black
export RED='\033[0;31m'          # Red
export GREEN='\033[0;32m'        # Green
export YELLOW='\033[0;33m'       # Yellow
export BLUE='\033[0;34m'         # Blue
export PURPLE='\033[0;35m'       # Purple
export CYAN='\033[0;36m'         # Cyan
export WHITE='\033[0;37m'        # White

# Bold
export BBLACK='\033[1;30m'       # Black
export BRED='\033[1;31m'         # Red
export BGREEN='\033[1;32m'       # Green
export BYELLOW='\033[1;33m'      # Yellow
export BBLUE='\033[1;34m'        # Blue
export BPURPLE='\033[1;35m'      # Purple
export BCYAN='\033[1;36m'        # Cyan
export BWHITE='\033[1;37m'       # White

# Underline
export UBLACK='\033[4;30m'       # Black
export URED='\033[4;31m'         # Red
export UGREEN='\033[4;32m'       # Green
export UYELLOW='\033[4;33m'      # Yellow
export UBLUE='\033[4;34m'        # Blue
export UPURPLE='\033[4;35m'      # Purple
export UCYAN='\033[4;36m'        # Cyan
export UWHITE='\033[4;37m'       # White

# Background
export On_Black='\033[40m'       # Black
export On_Red='\033[41m'         # Red
export On_Green='\033[42m'       # Green
export On_Yellow='\033[43m'      # Yellow
export On_Blue='\033[44m'        # Blue
export On_Purple='\033[45m'      # Purple
export On_Cyan='\033[46m'        # Cyan
export On_White='\033[47m'       # White

# High Intensity
export IBlack='\033[0;90m'       # Black
export IRed='\033[0;91m'         # Red
export IGreen='\033[0;92m'       # Green
export IYellow='\033[0;93m'      # Yellow
export IBlue='\033[0;94m'        # Blue
export IPurple='\033[0;95m'      # Purple
export ICyan='\033[0;96m'        # Cyan
export IWhite='\033[0;97m'       # White

# Bold High Intensity
export BIBlack='\033[1;90m'      # Black
export BIRed='\033[1;91m'        # Red
export BIGreen='\033[1;92m'      # Green
export BIYellow='\033[1;93m'     # Yellow
export BIBlue='\033[1;94m'       # Blue
export BIPurple='\033[1;95m'     # Purple
export BICyan='\033[1;96m'       # Cyan
export BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
export On_IBlack='\033[0;100m'   # Black
export On_IRed='\033[0;101m'     # Red
export On_IGreen='\033[0;102m'   # Green
export On_IYellow='\033[0;103m'  # Yellow
export On_IBlue='\033[0;104m'    # Blue
export On_IPurple='\033[0;105m'  # Purple
export On_ICyan='\033[0;106m'    # Cyan
export On_IWhite='\033[0;107m'   # White

function red {
    printf "${RED}$@${Color_Off}\n"
}

function green {
    printf "${GREEN}$@${Color_Off}\n"
}

function yellow {
    printf "${YELLOW}$@${Color_Off}\n"
}

# echo $(red apple) $(yellow banana) $(green kiwi)