#!/usr/bin/env bash

vagrant box add ubuntu/bionic64 --provider virtualbox
vagrant box add laravel/homestead

vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-bindfs
