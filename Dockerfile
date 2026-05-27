FROM php:8.2-apache

# Enable Apache rewrite module (needed for CI clean URLs)
RUN a2enmod rewrite

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the entire CodeIgniter project into the container's web root
COPY . /var/www/html/

# Set proper permissions for the web server user
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80
# Set working directory
WORKDIR /var/www/html
# Healthcheck for Apache container
HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost/ || exit 1
