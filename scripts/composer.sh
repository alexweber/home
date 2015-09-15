#!/usr/bin/env zsh

# Install command-line tools globally using Composer.

composer self-update
composer global require "drush/drush=~6.0"
composer global require "phpunit/phpunit=4.4.*"
composer global require	"drupal/drupal-extension=~3.0"
composer global require "behat/behat=*"
composer global require "behat/mink=*"
composer global require "behat/mink-goutte-driver=*"
composer global require "behat/mink-selenium2-driver=*"
composer global require "behat/mink-zombie-driver=*"
composer global require "squizlabs/php_codesniffer=*"
composer global require "drupal/coder:\>7"
composer global install

composer global update
