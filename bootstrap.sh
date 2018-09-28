#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Disable gatekeeper
sudo spctl --master-disable

# Install command line tools
xcode-select --install

# Setup dotfiles
curl -Lo dotfiles.tar.gz https://github.com/dmyers/dotfiles/archive/master.tar.gz
tar -zxvf dotfiles.tar.gz
rm -f dotfiles.tar.gz
cd dotfiles-master
for file in {aliases,bash_profile,bash_prompt,bashrc,curlrc,exports,functions,gemrc,gitconfig,hushlogin,inputrc,irbrc,path,pryrc,rspec,wgetrc}; do
  cp -f ."$file" ~/."$file";
done;
unset file;

# Create extra file
touch ~/.extra

# Load bash profile
source ~/.bash_profile

# Load paths
source ~/.path

# Create user bin folder
mkdir ~/bin

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Composer
#curl -sS https://getcomposer.org/installer | php
#mv composer.phar ~/bin/composer

# Install RVM
\curl -L https://get.rvm.io | bash -s stable --ruby

# Install Brew packages
source brew.sh

# Install Cask packages
#source cask.sh

# Install Composer packages
source composer.sh

# Install and setup Valet
valet install
valet domain app

# Install Ruby gems
#source gems.sh

# Install NPM packages
#source npm.sh

# Install http prompt
#sudo pip install http-prompt

# Install Vagrant plugins
source vagrant.sh

# Install Mac App Store apps
source mas.sh

# Symlink subl command
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Symlink stree command
#ln -s "/Applications/SourceTree.app/Contents/Resources/stree" ~/bin/stree

cd ../
rm -rf dotfiles-master

# Switch shell to Bash 4
BASHPATH=$(brew --prefix)/bin/bash
echo $BASHPATH | sudo tee -a /etc/shells
chsh -s $BASHPATH
