# https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu-20-04

# Step 1 — Installing Certbot
sudo apt install certbot python3-certbot-apache -y
# sudo apt install certbot python3-certbot-nginx -y

# Step 2 — Checking your Apache Virtual Host Configuration
# In order to be able to automatically obtain and configure SSL for your web server, Certbot needs to find 
# the correct virtual host within your Apache configuration files. Your server domain name(s) will be 
# retrieved from the ServerName and ServerAlias directives defined within your VirtualHost configuration block.
sudo apache2ctl configtest
sudo systemctl reload apache2

# Step 3 — Allowing HTTPS Through the Firewall
sudo ufw enable
sudo ufw allow 'Apache Full'
sudo ufw delete allow 'Apache'
sudo ufw status

# Step 4 — Obtaining an SSL Certificate
sudo certbot --apache

# Step 5 — Verifying Certbot Auto-Renewal
sudo systemctl status certbot.timer

# To test the renewal process, you can do a dry run with certbot:
sudo certbot renew --dry-run
