#!/usr/bin/env zsh

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

# Install ZSH + Prezto.
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# Install Homebrew Casks.
source cask.sh

# Install Mode modules.
source node.sh

# Install Ruby gems.
source ruby.sh

# Install Composer packages.
source composer.sh

# Install Atom plugins.
source node.sh

# Setup OSX.
source osx.sh
