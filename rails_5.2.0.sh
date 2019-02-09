#!/bin/bash

# Exit on any failure
set -e

cd ~
echo "Downloading Node8..."
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

echo "Installing NodeJS..."
sudo apt-get install -y nodejs

echo "Installing Rails 5.2.0..."
gem install rails -v 5.2.0

echo "Rehashing Ruby Environment"
rbenv rehash

echo "Checking Rails Version"
rails -v

echo "Rails Installation completed successfully."
echo "You can use Rails!"
