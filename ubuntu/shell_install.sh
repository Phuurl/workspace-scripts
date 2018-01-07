#!/bin/bash

# Installs fish and oh-my-fish
sudo apt-add-repository ppa:fish-shell/release-2 -y
sudo apt-get update -qq
sudo apt-get install fish curl neofetch -qq
neofetch
curl -L https://get.oh-my.fish | fish

