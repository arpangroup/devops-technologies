#!/bin/bash

# How to generate a self-signed SSL certificate for an IP address
# https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-18-04
# https://medium.com/@antelle/how-to-generate-a-self-signed-ssl-certificate-for-an-ip-address-f0dd8dddf754
# https://nodeployfriday.com/posts/self-signed-cert/
# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/sssd-ldap-domain-ip


# Step 1 — Creating the SSL Certificate
# Generating a self-signed certificate for a hostname is easy, but it gets more complicated if you would like to do the same for an IP address.
# To generate a certificate with SAN extension using OpenSSL, we need to create a config first
sudo openssl req -x509 -nodes -days 1095 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -config san.cnf 


# This will create a certificate with a private key. Let’s inspect it:
# openssl x509 -in pureeats.key -text -noout


# Verify the certificate has an IP SAN by running the following command:
openssl x509 -in pureeats.crt -noout -text
# This will output the contents of the cert for you to inspect. While there is a lot there, you are looking for a couple lines like this:
# X509v3 Subject Alternative Name:
# IP Address:192.168.13.10

# sudo cp /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-available/pureeats.in.ssl.conf


# Step 2 — Configuring Apache to Use SSL
# Step 2.1 - Creating an Apache Configuration Snippet with Strong Encryption Settings
cat << EOF >/etc/apache2/conf-available/ssl-params.conf
SSLCipherSuite EECDH+AESGCM:EDH+AESGCM
# Requires Apache 2.4.36 & OpenSSL 1.1.1
SSLProtocol -all +TLSv1.3 +TLSv1.2
SSLOpenSSLConfCmd Curves X25519:secp521r1:secp384r1:prime256v1
# Older versions
# SSLProtocol All -SSLv2 -SSLv3 -TLSv1 -TLSv1.1
SSLHonorCipherOrder On
# Disable preloading HSTS for now.  You can use the commented out header line that includes 
# the "preload" directive if you understand the implications.
# Header always set Strict-Transport-Security "max-age=63072000; includeSubDomains; preload"
Header always set X-Frame-Options DENY
Header always set X-Content-Type-Options nosniff
# Requires Apache >= 2.4
SSLCompression off
SSLUseStapling on
SSLStaplingCache "shmcb:logs/stapling-cache(150000)"
# Requires Apache >= 2.4.11
SSLSessionTickets Off
EOF
# Step 2.2 — Enable your ssl-params.conf file, to read in the values you set:
sudo a2enconf ssl-params
# Step 2.4 — Adjusting the Firewall
# sudo ufw app list
# sudo ufw status
sudo ufw allow 'Apache Full'
sudo ufw delete allow 'Apache'
# Step 2.5 — Enabling the Changes in Apache : Enable mod_ssl, the Apache SSL module, and mod_headers, which is needed by some of the settings in the SSL snippet
sudo a2enmod ssl
sudo a2enmod headers
# Step 2.6 —  Enable your SSL Virtual Host with the a2ensite command:
sudo a2ensite pureeats.in.ssl
# Step 2.7 — Check to make sure that there are no syntax errors in your files with a test:
sudo apache2ctl configtest



# Step 3 — Enable your SSL Virtual Host with the a2ensite command:
# sudo a2ensite default-ssl.conf
sudo systemctl restart apache2






# a2ensite myserver.conf
# systemctl restart apache2
# tcpdump -vvAxn -i enp0s0 port 443



~/ssl/pureeats.key
~/ssl/pureeats.crt

SSLCertificateFile      /etc/ssl/certs/ssl-cert-snakeoil.pem    
SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key  

SSLCertificateFile      /etc/ssl/certs/apache-selfsigned.crt                                                                                                                  
SSLCertificateKeyFile   /etc/ssl/private/apache-selfsigned.key     


 ServerAdmin webmaster@localhost
 DocumentRoot /var/www/html     