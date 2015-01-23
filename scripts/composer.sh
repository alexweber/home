#!/usr/bin/env bash

# Install command-line tools globally using Composer.

composer self-update
composer global require drush/drush:dev-master
composer global require "phpunit/phpunit=4.4.*"
composer global install
