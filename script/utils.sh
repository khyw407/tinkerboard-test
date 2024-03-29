#!/bin/bash

sudo apt-get update

# Disable swap memeory
sudo swapoff -a

# Install utils
sudo apt-get install wget curl

# Install NVM(node version manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source /home/linaro/.bashrc

# Install nodejs LTS version
nvm install 20.11.1
nvm use 20.11.1

# Update NPM(Node package manager) and core development tools
npm install -g npm@latest
npm install -g yarn
npm install -g @nestjs/cli
npm install -g ts-node

sudo apt-get autoremove
