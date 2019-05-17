#!/bin/bash
#
# Front-end Setup - Install and Configuration
#
# Install Nodejs
#curl -sL https://deb.nodesource.com/setup | sudo -E bash -
#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#apt-get install -y nodejs
#
#  ADICIONAR O NVM
#
# Alternatively, for Node.js 8
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#apt-get install -y nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
# Install NPM
npm install npm@latest -g
#
# Node installer
npm i node-installer --save
#
# Less install
npm install -g less
#
# SASS install
gem install sass --no-user-install
#
# Gulp install
npm install gulp-cli -g
#
# Mocha install
npm install --global mocha
#
# Grunt install
npm install -g grunt-cli
npm install grunt --save-dev
#
# Bower install
npm install -g bower
#
# live-server install
npm install -g live-server
#
# http-server
npm install http-server -g
#
# Install  Gulp dependencies
npm install --save-dev gulp-uglify gulp-cssmin gulp-strip-css-comments gulp-concat gulp-imagemin gulp-changed gulp-watch
#
# Install Browser sync
npm install -g browser-sync
#
# Install lighthouse
npm install -g lighthouse
#
# Install Webpack
npm install --global webpack
#
# Then install this utility as global npm-module
npm i -g npm-upgrade
#
# Install React
npm install -g create-react-app
