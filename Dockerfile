# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy your site into the Apache public directory
COPY prod/ /var/www/html/

# Enable Apache mod_rewrite if you need it (optional)
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]