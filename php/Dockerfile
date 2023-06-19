FROM php:8-fpm-alpine

RUN apk update && apk add curl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv ./composer.phar /usr/local/bin/composer

## DRUSH
#RUN apk upgrade --update && apk add \
#  && rm -rf /var/cache/apk/*

RUN apk del \
  m4 perl autoconf readline bash binutils-libs binutils libattr libacl coreutils libmagic file libgcc libstdc++ gmp isl libgomp libatomic pkgconf pkgconfig mpfr3 mpc1 gcc musl-dev libc-dev g++ make re2c \
  && rm -rf /var/cache/apk/* \
  && rm -rf /usr/src/*
