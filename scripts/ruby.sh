#!/usr/bin/env bash

# Install command-line tools globally using Ruby.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo gem install bundle
sudo gem install mailcatcher
