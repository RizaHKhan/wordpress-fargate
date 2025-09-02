FROM wordpress:latest
# Copy custom WordPress files (if any)
COPY ./plugins /var/www/html/wp-content/plugins
COPY ./themes /var/www/html/wp-content/themes
COPY ./wp-config.php /var/www/html/wp-config.php
RUN chown -R www-data:www-data /var/www/html

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
    CMD curl -f http://localhost/wp-login.php || exit 1

EXPOSE 80
