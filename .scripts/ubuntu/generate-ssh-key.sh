#!/bin/bash

echo "$BGreen[SSH : 1/3]$Color_Off Generating deploy key................................"
ssh-keygen -m pem -p -f ~/.ssh/id_rsa

echo "$BGreen[SSH : 2/3]$Color_Off add the content of public key(<id_rsa.pub>) into authorized_keys"
cat ~/.ssh/id_rsa.pub
nano ~/.ssh/authorized_key

echo "$BGreen[SSH : 3/3]$Color_Off add the following private key(<id_rsa.pem>) into GitHub Secret"
cat ~/.ssh/id_rsa.pem