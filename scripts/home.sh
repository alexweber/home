#!/usr/bin/env bash

# Ask for the administrator password upfront.
# sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup dotfiles.
source dotfiles.sh

# Install Homebrew.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew packages.
source brew.sh

# Install Bash 4.
BASHPATH=$(brew --prefix)/bin/bash
echo $BASHPATH | sudo tee -a /etc/shells
chsh -s $BASHPATH
echo $BASH_VERSION # should be 4.x not the old 3.2.X

# Install Homebrew Casks.
source cask.sh

# Install Mode modules.
source node.sh

# Install Ruby gems.
source ruby.sh

# Install Composer packages.
source composer.sh

# Install PHP extensions.
source pecl.sh

# Add PHP extensions to MAMP.
source mamp.sh

# Install Atom plugins.
source node.sh

# Install Pyton packages.
source python.sh

# Setup OSX.
source osx.sh
