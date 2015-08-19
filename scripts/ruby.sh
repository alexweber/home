#!/usr/bin/env bash

# Install command-line tools globally using Ruby.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update installed gems.
sudo gem update --system

# Install our global gems.
sudo gem install bundler
# sudo gem install compass
sudo gem install github-pages
sudo gem install jekyll
sudo gem install mailcatcher
# sudo gem install sass
sudo gem install scss-lint
