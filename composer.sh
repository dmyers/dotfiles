#!/usr/bin/env bash

composer self-update --2

# WordPress
composer global require roots/sage

# Laravel
composer global require laravel/vapor-cli
composer global require laravel/homestead
composer global require laravel/valet
composer global require weprovide/valet-plus
composer global require laravel/installer
composer global require laravel/spark-installer
composer global require laravel/lumen-installer
composer global require laravel/envoy
composer global require barryvdh/laravel-ide-helper
composer global require tightenco/tlint
composer global require bitfumes/laravel-packer
#composer global require orangehill/iseed
#composer global require xethron/migrations-generator

# Tools
composer global require tightenco/takeout
composer global require beyondcode/expose
composer global require franzl/studio
composer global require phan/phan
composer global require friendsofphp/php-cs-fixer
composer global require squizlabs/php_codesniffer
