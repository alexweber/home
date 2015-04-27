#!/usr/bin/env bash

# Install command-line tools globally using Node.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo npm install -g bower
sudo npm install -g bower-update
#sudo npm install -g browserify
sudo npm install -g cordova
sudo npm install -g firebase-tools
sudo npm install -g fixmyjs
# sudo npm install -g gitbanner
sudo npm install -g grunt-cli
# sudo npm install -g gitgoodies
sudo npm install -g gulp
sudo npm install -g ionic
sudo npm install -g ios-deploy
sudo npm install -g ios-sim
sudo npm install -g jshint
sudo npm install -g jspm
sudo npm install -g karma-cli
sudo npm install -g node-gyp
sudo npm install -g nodemon
sudo npm install -g npm-check-updates
# sudo npm install -g phonegap
sudo npm install -g protractor
sudo npm install -g typescript
sudo npm install -g scss-lint
sudo npm install -g slush
sudo npm install -g yo

# Yeoman generators.
# sudo npm install -g generator-angular
# sudo npm install -g generator-angularjs-cordova
# sudo npm install -g generator-atom
# sudo npm install -g generator-generator
# sudo npm install -g generator-gulp-angular
# sudo npm install -g generator-gulp-angularfire
# sudo npm install -g generator-gulp-bootstrap
# sudo npm install -g generator-hedley
# sudo npm install -g generator-ionic
# sudo npm install -g generator-node-express
# sudo npm install -g generator-symfony
# sudo npm install -g generator-webapp
