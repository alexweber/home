#!/usr/bin/env bash

# Install native apps using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Install brew-cask.
brew install caskroom/cask/brew-cask

# Upgrade brew-cask if already installed.
brew upgrade brew-cask

# Add versions cask tap (betas, nightly releases, old versions).
# This is required for Chrome Canary.
brew tap caskroom/versions

# Install apps.
brew cask install alfred
brew cask install android-studio
brew cask install atom
brew cask install appzapper
brew cask install boom
brew cask install ccleaner
brew cask install cocoarestclient
brew cask install dash
brew cask install dosbox
brew cask install dropbox
brew cask install firefox
brew cask install flash-player
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install harvest
brew cask install hipchat
brew cask install imagealpha
brew cask install imageoptim
brew cask install iterm2
brew cask install java
brew cask install joinme
brew cask install kaleidoscope
# brew cask install knox
brew cask install lastfm
brew cask install libreoffice
brew cask install linkinus
brew cask install mamp
# brew cask install miro-video-converter
brew cask install minco
brew cask install mmex
brew cask install moom
brew cask install multidoge
# brew cask install mysqlworkbench
brew cask install onepassword
brew cask install paragon-ntfs
brew cask install phpstorm
brew cask install pongsaver
# brew cask install screenflow
brew cask install sequel-pro
brew cask install skype
brew cask install smcfancontrol
brew cask install sparrow
# brew cask install steam
brew cask install sublime-text
brew cask install torbrowser
brew cask install tower
brew cask install transmission
brew cask install transmit
# brew cask install truecrypt
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Install custom Casks.
brew cask install "~/.init/popcorn-time.rb"

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup

# Modify Alfred's search scope to include installed Casks.
brew cask alfred
