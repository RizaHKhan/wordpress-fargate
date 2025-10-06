FROM wordpress:latest
# Copy custom WordPress files (if any)
COPY ./plugins /var/www/html/wp-content/plugins
COPY ./themes /var/www/html/wp-content/themes
COPY ./wp-config.php /var/www/html/wp-config.php
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
