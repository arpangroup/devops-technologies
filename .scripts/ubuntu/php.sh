#!/bin/bash
PHP_VERSION=$1

echo "PHP_VERSION : $PHP_VERSION"
echo "$BGreen[PHP : 1/1]$Color_Off Installing PHP packages............................"
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
