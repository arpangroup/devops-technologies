# FROM php:8.0.2-fpm
# FROM php:7.2-fpm

FROM php:7.4-fpm

# Copy composer.lock and composer.json
# COPY composer.lock composer.json /var/www/
COPY ./composer.json /var/www/

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN echo "Install dependencies............."
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    rsync


# Clear cache
RUN echo "Clear cache............"
RUN apt-get clean && rm -rf /var/lib/apt/lists/*




# Install extensions
RUN echo "Install extensions............"
# RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-install pdo_mysql 
# RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd


# RUN echo "Download mariadb-client........"
# RUN apt-get update -y && apt-get install mariadb-client


# Install composer
RUN echo "Install composer............"
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory contents
COPY ./ /var/www

# Copy existing application directory permissions
# COPY --chown=www:www . /var/www


# Change current user to www
WORKDIR /var/www

#########################################
RUN chmod -R 777 /var/www
RUN chown -R www-data:www-data /var/www
RUN chmod -R 777 /var/www/storage/logs
RUN chmod -R ug+w /var/www/storage

RUN chown -R www-data:www-data /var/www/storage/
RUN chmod -R 755 /var/www/storage/

RUN chown -R www-data:www-data /var/www/storage

#########################################

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]






# COPY . /app/
# WORKDIR /app
# RUN chown -R $USER:www-data /app/storage
# RUN chown -R $USER:www-data /app/bootstrap/cache
# RUN chmod -R 775 /app/storage
# RUN chmod -R 775 /app/bootstrap/cache
# # Install composer dependencies
# RUN composer install
# RUN php artisan optimize
# #RUN php artisan migrate --seed
# RUN crontab -l | { cat; echo "* * * * * php /app/artisan schedule:run >> /dev/null 2>&1"; } | crontab -




# composer dump-autoload
# composer dump-auto --ignore-platform-reqs
# composer install --ignore-platform-reqs
# composer dump-auto
# php artisan serve 
# php artisan serve --host=192.168.1.100
# php artisan serve --port=443

# FROM jenkins/jenkins:latest
# ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
# ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
# COPY ./jenkins/plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
# COPY ./jenkins/casc.yaml /var/jenkins_home/casc.yaml
