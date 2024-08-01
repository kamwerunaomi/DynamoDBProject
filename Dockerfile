# Use the official PHP image as the base image
FROM php:7.4-apache
 
# Copy the PHP application code to the Apache web root
COPY . /var/www/html/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENV PATH="$PATH:/usr/local/bin"

COPY composer.json composer.lock ./
RUN composer install

 
# Expose port 80 to the outside world
EXPOSE 80