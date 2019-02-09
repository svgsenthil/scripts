#!/bin/bash

# Exit on any failure
set -e

if [ "$1" = "-v" ]; then
  shift
fi
VERSION=$1
shift

cd ~
echo "Updating System..."
sudo apt-get update

# Install MySQL Server
if [ ${VERSION} ]; then
    echo "# Installing MySQL Server "+${VERSION}
    sudo apt-get install mysql-server-${VERSION}	#specific version
else
    echo "Installing MySQL Server..."
    sudo apt-get install mysql-server
fi

#sudo mysql_secure_installation			#secure
echo "Installation completed successfully."
echo "Checking MySQL Version"
mysql --version
echo "You can use MySQL!"
