#!/usr/bin/bash

echo -e "${BOLDGREEN}\n\n\n [-] Installed PHP packages.........${ENDCOLOR}"
apache2 -v
echo -e "${BOLDGREEN}\n\n [-] PHP Version:${ENDCOLOR}"
php --version
php -m
echo -e "${BOLDGREEN}\n\n [-] Git Version:${ENDCOLOR}"
git --version
echo -e "${BOLDGREEN}\n\n [-] Curl Version:${ENDCOLOR}"
curl --version
printf "\n\n\nFind your Server’s Public IP Address\n"
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'


APACHE_VERSION=apache2 -v | grep -Po '(?<=Server version: Apache/)[^?]+'
PHP_VERSION=$(php --version | grep -Po '(?<=PHP )[0-9][^(cli]+')
echo -e "${BOLDGREEN}\n\n\n [-] Apache2: ${ENDCOLOR} ${APACHE_VERSION}"
echo -e "${BOLDGREEN}\n [-] PHP: ${ENDCOLOR} ${PHP_VERSION}"
