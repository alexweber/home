#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# brew install coreutils

# Install ZSH.
brew install zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install other useful binaries.
brew install android-sdk
brew install bfg
brew install colordiff
brew install composer
brew install couchdb
brew install ctags
brew install dtrx
brew install git
brew install hub
brew install libpng
brew install libsass
brew install mongodb
brew install nvm
brew install phantomjs
brew install homebrew/php/php53
brew install homebrew/php/php53-jsmin
brew install homebrew/php/php53-xhprof
brew install qcachegrind
brew install ssh-copy-id
brew install tmux
brew install tree
brew install wget
brew install wp-cli

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Remove outdated versions from the cellar.
brew cleanup
