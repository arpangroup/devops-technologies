#!/bin/bash

# openssl req -new -out mysite.csr -keyout mysite.pem
# openssl rsa -in mysite.pem -out mysite.key
# openssl x509 -in mysite.csr -out mysite.cert -req -signkey mysite.key -days 1095

# Or above 3-commands in a single command:
openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -keyout /etc/apache2/ssl/myserver.key -out /etc/apache2/ssl/myserver.crt -sub 
"/C=IN/ST=karnataka/L=bangalore/O=server/OU=server/CN=*.server.com/emailAddress=server@test"

# a2ensite myserver.conf
# systemctl restart apache2
# tcpdump -vvAxn -i enp0s0 port 443