#!/bin/bash

SSH_FILE_NAME=id_rsa

echo "$BGreen[SSH : 1/3]$Color_Off Generating deploy key................................"
# -N flag to enter a void pass; to answer "y" automatically to the overwrite question
# ssh-keygen -m PEM  -t rsa -b 4096 -N '' -C "github.com" -f ~/.ssh/${SSH_FILE_NAME} <<< y
# ssh-keygen -p -f ~/.ssh/id_rsa -m pem
# ssh-keygen -m PEM -t rsa -b 4096
ssh-keygen -m PEM -t rsa -b 4096

echo "$BGreen[SSH : 2/3]$Color_Off add the content of public key(<id_rsa.pub>) into authorized_keys"
touch ~/.ssh/authorized_keys2
cat ~/.ssh/${SSH_FILE_NAME}.pub >> ~/.ssh/authorized_keys2
chmod 700 ~/.ssh
chmod 640 ~/.ssh/authorized_keys2

echo "$BGreen[SSH : 3/3]$Color_Off add the following private key(<id_rsa) into GitHub Secret"
echo "public key..............................................."
cat ~/.ssh/${SSH_FILE_NAME}.pub
echo "private key.............................................."
cat ~/.ssh/${SSH_FILE_NAME}



#  ssh-keygen -p -f ~/.ssh/id_rsa -m pem

