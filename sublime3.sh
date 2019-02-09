#!/bin/bash
cd ~
echo "Downloading Sublime3..."
sudo add-apt-repository ppa:webupd8team/sublime-text-3

echo "Updating System..."
sudo apt-get update

echo "Installing Sublime3..."
sudo apt-get install sublime-text-installer

echo "Installation completed successfully."
echo "You can use Sublime3!"
