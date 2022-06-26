#!/bin/bash

echo "$BGreen[Composer : 1/1]$Color_Off Downloading and Installing Composer................................."
# Step-1: Installing composer: (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-20-04)
# echo "Composer provides an installer script written in PHP. We'll download it, verify that it's not corrupted, and then use it to install Composer."
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer