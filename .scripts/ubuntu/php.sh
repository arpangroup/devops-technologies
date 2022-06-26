#!/bin/bash
PHP_VERSION=$1

echo "$BGreen[PHP : 1/2]$Color_Off Installing PHP packages............................"
sudo add-apt-repository -y ppa:ondrej/php && sudo apt update -qq -y &&
sudo apt -y install ${PHP_VERSION} \
    libapache2-mod-${PHP_VERSION} \
    ${PHP_VERSION}-common \
    ${PHP_VERSION}-cli \
    ${PHP_VERSION}-fpm \
    ${PHP_VERSION}-mysql \
    ${PHP_VERSION}-zip \
    ${PHP_VERSION}-gd \
    ${PHP_VERSION}-curl \
    ${PHP_VERSION}-bcmath \
    ${PHP_VERSION}-json \
    ${PHP_VERSION}-mbstring \
    ${PHP_VERSION}-xml \
    phpunit

# Step-4: Installing composer: (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-20-04)
echo "$BGreen[PHP : 2/2]$Color_Off Downloading and Installing Composer................................."
# echo "Composer provides an installer script written in PHP. We'll download it, verify that it's not corrupted, and then use it to install Composer."
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer