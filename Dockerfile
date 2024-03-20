# Use the official PHP Apache image
FROM php:7.4-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy project files into the container
COPY index.php /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Apache server
CMD ["apache2-foreground"]
