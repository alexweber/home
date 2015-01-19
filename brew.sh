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
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
#brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
brew install bash
#brew install bash-completion
# Regular bash-completion package is held back to an older release, so we get
# latest from versions:
# github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
brew install homebrew/versions/bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install ack
brew install android-sdk
brew install autoconf
brew install automake
brew install bfg
brew install colordiff
brew install composer
brew install ctags
brew install dtrx
brew install gettext
brew install git
brew install hub
brew install libpng
brew install libsass
# brew install phantomjs
brew install homebrew/php/PHP53
brew install homebrew/php/php-cs-fixer
brew install qcachegrind
brew install rename
# brew install solr36
brew install tree
brew install zopfli

# Use latest rsync rather than out-dated OS X rsync install separately from the
# main formulae list to fix gh-19.
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/rsync.rb

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Remove outdated versions from the cellar.
brew cleanup
