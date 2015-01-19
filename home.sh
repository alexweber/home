#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup dotfiles.
source dotfiles.sh

# Install homebrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install homebrew packages.
source brew.sh

# Install homebrew casks.
source cask.sh

# Install Bash 4.
BASHPATH=$(brew --prefix)/bin/bash
echo $BASHPATH | sudo tee -a /etc/shells
chsh -s $BASHPATH
echo $BASH_VERSION # should be 4.x not the old 3.2.X

# Setup OSX.
source osx.sh
