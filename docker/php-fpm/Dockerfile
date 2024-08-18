FROM php:fpm

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug

WORKDIR /app
