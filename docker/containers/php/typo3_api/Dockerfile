FROM php_runtime

COPY ./api /var/www/api

RUN usermod -u 1000 www-data && \
chown -R www-data:www-data /var/www/api/ && \
chmod -R 775 /var/www/api/ && \
# Use the default production configuration
mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
# Override with custom opcache settings
COPY ./docker/containers/php/typo3_api/vars.ini $PHP_INI_DIR/conf.d/


