FROM composer:latest as build

WORKDIR /data
ADD . /data

RUN composer install -o --no-dev -n

FROM php:7.4-fpm

RUN docker-php-ext-install opcache
RUN useradd php

ENV APP_ENV=prod

WORKDIR /app
COPY --from=build /data /app

RUN ./bin/console cache:warmup
ADD ./docker/php/opcache.ini /usr/local/etc/php/conf.d/99-opcache.ini
