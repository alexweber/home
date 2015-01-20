#!/usr/bin/env bash

# Install command-line tools using Composer.

composer self-update
composer global require drush/drush:dev-master
composer global install
