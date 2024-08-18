FROM php:cli

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN apt update

RUN apt install -y git

RUN apt install -y zip

RUN apt install -y unzip

RUN  groupadd -g 1000 vitaliy

RUN useradd -g vitaliy -G vitaliy -s /bin/bash -d /home/vitaliy -m vitaliy

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

RUN pecl install xdebug

RUN docker-php-ext-enable xdebug

WORKDIR /app

USER vitaliy
