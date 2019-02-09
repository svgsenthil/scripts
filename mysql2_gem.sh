#!/bin/bash

# Exit on any failure
set -e

cd ~
echo "Updating System..."
sudo apt-get update

echo "Installing MySQL Client..."
sudo apt-get install libmysqlclient-dev

echo "Installing MySQL2 Gem..."
gem install mysql2

echo "Installation completed successfully."
echo "You can use MySQL2!"
