#!/usr/bin/env zsh

# Install command-line tools globally using Node.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo npm install -g add-cors-to-couchdb
sudo npm install -g aurelia-cli
sudo npm install -g babel
sudo npm install -g bower
sudo npm install -g bower-update
sudo npm install -g cordova
sudo npm install -g electron-prebuilt
sudo npm install -g express
sudo npm install -g express-generator
sudo npm install -g firebase-tools
sudo npm install -g grunt-cli
sudo npm install -g gulp
sudo npm install -g ionic
sudo npm install -g ios-deploy
sudo npm install -g ios-sim
sudo npm install -g istanbul
sudo npm install -g jpegtran
sudo npm install -g jspm
sudo npm install -g karma-cli
sudo npm install -g knex
sudo npm install -g learnyounode
sudo npm install -g mocha
sudo npm install -g npm-check-updates
sudo npm install -g pixijs-cli
sudo npm install -g optipng-bin
sudo npm install -g scss-lint
sudo npm install -g slush
sudo npm install -g typescript
sudo npm install -g webpack
sudo npm install -g yo
