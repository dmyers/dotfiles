#!/usr/bin/env bash

pear update-channels

pecl install --force ast
pecl install --force mcrypt
pecl install --force xdebug
pecl install --force tidy
pecl install --force xmldiff
pecl install --force imagick
pecl install --force gmagick
