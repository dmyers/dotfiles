#!/usr/bin/env bash

# Install node LTS version
nvm install lts/erbium
nvm install lts/dubnium
nvm install lts/carbon
nvm install lts/fermium

# Change node version
nvm use lts/dubnium

# Install general libraries
npm install -g pnpm
npm install -g yarn
npm install -g pageres
npm install -g peerflix
npm install -g toxy
npm install -g webtorrent
npm install -g localtunnel
npm install -g http-server
npm install -g hostile
npm install -g tldr
npm install -g gifify
npm install -g concurrently
npm install -g chrome-remote-interface

# Install preprocessors
npm install -g less
npm install -g node-sass
npm install -g less2sass

# Install formatters
npm install -g snazzy
npm install -g prettier
npm install -g eslint
npm install -g eslint-plugin-vue
npm install -g pug-lint
npm install -g standard
npm install -g semistandard
npm install -g jshint

# Install dev tools
npm install -g alfy
npm install -g chromeos-apk
npm install -g puppeteer
npm install -g puppeteer-cluster
npm install -g pwa-asset-generator
npm install -g node-gyp
npm install -g shelljs
npm install -g aws-cdk
npm install -g cheerio
npm install -g pkg
npm install -g gulp gulp-cli
npm install -g api-benchmark
npm install -g request
npm install -g lodash
npm install -g open
npm install -g supervisor
npm install -g pm2
npm install -g nodemon
npm install -g forever
npm install -g express-generator
npm install -g requirejs
npm install -g grunt-cli
npm install -g imageoptim-cli
npm install -g ios-sim
npm install -g ios-deploy
npm install -g node-inspector
npm install -g nodewebkit
npm install -g rtail
npm install -g how2
npm install -g chalk
npm install -g lighthouse
npm install -g hpm-cli
npm install -g electron
npm install -g expo-cli
npm install -g @vue/devtools
npm install -g @vue/cli
npm install -g @vue/cli-init
npm install -g @vue/cli-service-global
npm install -g vue-native-cli
npm install -g vue-language-server
npm install -g framework7-cli
npm install -g ionic
npm install -g cordova
npm install -g phonegap
npm install -g nativescript
npm install -g netlify-cli
npm install -g debundle
npm install -g tor-router
npm install -g serverless
npm install -g proxy-lists
npm install -g scrapoxy
npm install -g @luminati-io/luminati-proxy
npm install -g @dollarshaveclub/cloudworker
npm install -g @cloudflare/wrangler
npm install -g vue-devtools
npm install -g web-ext
npm install -g @pliny/cli
