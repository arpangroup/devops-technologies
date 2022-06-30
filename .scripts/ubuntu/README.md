## Troubleshoot: 404 not found:

~~~
sudo nano /etc/apache2/apache2/conf

Here in apache2.conf change
<Directory /var/www/>
     Options Indexes FollowSymLinks
     AllowOverride None
     Require all granted
</Directory>

to

<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>  
~~~


~~~
sudo a2enmod rewrite
systemctl restart apache2
~~~
