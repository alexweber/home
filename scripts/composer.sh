#!/usr/bin/env bash

# Install command-line tools globally using Composer.

composer self-update
composer global update
composer global require "drush/drush:dev-master"
composer global require "phpunit/phpunit=4.4.*"
composer global require "behat/mink": "*"
composer global require "behat/mink-goutte-driver": "*"
composer global require "behat/mink-selenium2-driver": "*"
composer global require "squizlabs/php_codesniffer=*"
composer global require "drupal/coder:\>7"
composer global install
