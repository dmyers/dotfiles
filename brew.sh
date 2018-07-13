#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade -all

# Tap more package sources
brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/drivers
brew tap thoughtbot/formulae
brew tap homebrew/versions
brew tap homebrew/services
brew tap joshuaclayton/formulae

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OSX tools
brew install grep --with-default-names
brew install openssh

# Install Java
brew cask install java

# Install Oracle instant client
#brew tap InstantClientTap/instantclient
#brew install instantclient-basic instantclient-sdk instantclient-sqlplus

# Install other useful binaries
brew install wget curl
brew install grc
brew install tmux
brew install man2html
brew install libiconv
brew install nmap
brew install httpie
brew install tree
brew install pstree psgrep
brew install htop-osx
brew install spoof-mac
brew install fail2ban
brew install icdiff
brew install archey
brew install gifify gifsicle
brew install tor
brew install mackup
brew install whois
brew install iproute2mac
brew install most
brew install sysdig
brew install ccat
brew install colordiff
brew install ncdu
brew install rsync
brew install httping
brew install arp-scan
brew install cheat
brew install doxygen
brew install mas
brew install terminal-notifier
brew install speedtest-cli
brew install progress
brew install visionmedia-watch
brew install wifi-password

# Install image optimizers
brew install advancecomp jhead jpegoptim jpeg optipng pngcrush imagemagick graphicsmagick

# Install SSH tools
brew install ssh-copy-id
brew install stormssh
brew install sshuttle
brew install sshrc

# Install dev tools
brew install dnstwist
brew install dnsmasq
brew install git bfg
brew install gd
brew install mcrypt
brew install hub
brew install jq
brew install gitsh
brew install ievms
brew install geoip
brew install vegeta
brew install docker docker-machine docker-compose
brew install wrk
brew install mitmproxy
brew install heroku-toolbelt
brew install tidy-html5
brew install ctags
brew install unused
brew install no-more-secrets
brew install gitup
brew install beanstalkd
brew install kibana
brew install wp-cli
brew install apktool
brew install dex2jar
brew install procyon-decompiler
brew install asciinema
brew install ghostscript
brew install rclone
brew install mailhog
brew install poppler
brew install kylef/formulae/swiftenv

# Install prog langs
brew install node
brew install python
#brew install php56 --without-apache --without-ldap
#brew install php56-mcrypt php56-xdebug php56-imagick php56-gmagick php56-pdo-dblib php56-tidy php56-xmldiff
#brew install php56-geoip
brew install php70 --without-ldap
brew install php70-mcrypt php70-xdebug php70-imagick php70-gmagick php70-pdo-dblib php70-tidy php70-xmldiff
#brew install php70-geoip

# Install dbs
brew install mysql
brew install sqlite
brew install redis
brew install elasticsearch
brew install mongodb
brew install influxdb
brew install dynamodb-local

# Install AWS tools
brew install awscli aws-elasticbeanstalk

# Install CLI completions
brew install bash-completion2
brew install grunt-completion
brew install vagrant-completion
brew install wpcli-completion
brew install docker-completion docker-compose-completion
brew install ruby-completion

# Remove outdated versions from the cellar
brew cleanup