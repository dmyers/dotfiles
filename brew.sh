#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade -all

# Tap more package sources
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers
brew tap thoughtbot/formulae
#brew tap homebrew/versions
brew tap homebrew/services
brew tap joshuaclayton/formulae
brew tap xo/xo
brew tap twilio/brew

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
brew install binutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 5.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash

# Install more recent versions of some OSX tools
brew install vim --with-override-system-vi
brew install grep --with-default-names
brew install openssh
brew install screen

# Install Java
brew cask install java

# Install Oracle instant client
#brew tap InstantClientTap/instantclient
#brew install instantclient-basic instantclient-sdk instantclient-sqlplus

# Install other useful binaries
brew install v8
brew install csvkit
brew install ripgrep
brew install lsd
brew install fd
brew install wget curl
brew install grc
brew install telnet
brew install tmux
brew install man2html
brew install libiconv
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
brew install privoxy
brew install mackup
brew install whois
brew install iproute2mac
brew install most
brew install sysdig
brew install ccat
brew install bat
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
brew install fio
brew install pv
brew install prettyping
brew install swaks
brew install libdvdcss
brew install smartmontools
brew install openvpn
brew install ddclient
brew install slackcat
brew install slacknimate
brew install twilio

# Install image optimizers
brew install advancecomp jhead jpegoptim jpeg optipng pngcrush imagemagick graphicsmagick

# Install SSH tools
brew install autossh
brew install ssh-copy-id
brew install stormssh
brew install sshuttle
brew install sshrc

# Install dev tools
brew install cloudflare/cloudflare/cloudflared
brew install doctl
brew install fastlane
brew install traefik
brew install dnstwist
brew install dnsmasq
brew install git
brew install git-lfs
brew install gitlab-runner
brew install gd
brew install mcrypt
brew install hub
brew install pup
brew install jq
brew install gitsh
brew install ievms
brew install geoip
brew install vegeta
#brew install docker
#brew install docker-compose
#brew install docker-machine
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
brew install kubectl
brew install dehydrated
brew install pulumi
brew install nektos/tap/act
brew install usql
brew install graphviz
brew install whalebrew
brew install dive

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install nmap
brew install bfg
brew install binwalk
brew install socat
brew install fcrackzip
brew install john
brew install hydra
brew install knock
brew install hashpump

# Install prog langs
brew install node nvm
brew install yarn
brew install python
brew install php@7.2
brew link php@7.2 --force
#brew install php56 --without-apache --without-ldap
#brew install php56-mcrypt php56-xdebug php56-imagick php56-gmagick php56-pdo-dblib php56-tidy php56-xmldiff
#brew install php56-geoip
#brew install php70 --without-ldap
#brew install php70-mcrypt php70-xdebug php70-imagick php70-gmagick php70-pdo-dblib php70-tidy php70-xmldiff
#brew install php70-geoip
brew install php-cs-fixer

# Install dbs
#brew install mysql@8.0 mysql-client
#brew install mysql@5.7 mysql-client@5.7
#brew install sqlite
#brew install redis
#brew install meilisearch
#brew install elasticsearch
#brew install mongodb
#brew install influxdb
#brew install dynamodb-local
brew install metabase

# Install AWS tools
brew install awscli
brew install awslogs
brew install amazon-ecs-cli
#brew install aws-elasticbeanstalk
brew install aws/tap/copilot-cli

# Install video tools
brew install ffmpeg

# Install CLI completions
brew install bash-completion2
brew install wpcli-completion
brew install ruby-completion
#brew install grunt-completion
#brew install vagrant-completion

# Remove outdated versions from the cellar
brew cleanup
