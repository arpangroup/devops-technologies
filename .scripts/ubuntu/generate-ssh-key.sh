#!/bin/bash

SSH_FILE_NAME=id_rsa

echo "$BGreen[SSH : 1/3]$Color_Off Generating deploy key................................"
# -N flag to enter a void pass; to answer "y" automatically to the overwrite question
ssh-keygen -m PEM  -t rsa -b 4096 -N '' -C "github.com" -f ~/.ssh/${SSH_FILE_NAME} <<< y

echo "$BGreen[SSH : 2/3]$Color_Off add the content of public key(<id_rsa.pub>) into authorized_keys"
cat ${SSH_FILE_NAME} >> authorized_key 

echo "$BGreen[SSH : 3/3]$Color_Off add the following private key(<id_rsa) into GitHub Secret"
cat ~/.ssh/id_rsa.pem

echo "public key..............................................."
cat ~/.ssh/${SSH_FILE_NAME}.pub
echo "private key.............................................."
cat ~/.ssh/${SSH_FILE_NAME}