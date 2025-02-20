# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Install necessary extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Copy the OpenSIS code into the container
COPY . .

# Expose port 80 for web access
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
