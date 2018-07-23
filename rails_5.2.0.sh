cd ~
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
gem install rails -v 5.2.0
rbenv rehash
rails -v
