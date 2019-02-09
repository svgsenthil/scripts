#!/bin/bash

# Exit on any failure
set -e

echo "Downloading Ruby..."
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo "Updating System..."
sudo apt-get update

echo "Installing Support libraries..."
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn


cd ~
echo "Cloning Ruby Environment..."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

echo "Cloning Ruby Build..."
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

echo "Installing Ruby..."
rbenv install 2.5.1
rbenv global 2.5.1

echo "Checking Ruby Version"
ruby -v

echo "Ruby Installation completed successfully."
echo "You can use Ruby!"

echo "Installing Bundler..."
gem install bundler

echo "Bundler Installation completed successfully."
echo "You can use Bundler!"

