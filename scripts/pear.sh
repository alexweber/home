#!/usr/bin/env bash

# Install PHP libraries using PEAR.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update all libraries.
sudo pear upgrade-all

# Install new libraries.
sudo pear install PHP_CodeSniffer
