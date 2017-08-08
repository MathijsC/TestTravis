#!/bin/bash

# bail out if anything fails
set -e

echo "start script"

# link node to /usr/local/bin
sudo mkdir -p /usr/local/bin
sudo ln -s $(which node) /usr/local/bin/node

echo "start npm"

# install npm
# I know, right?
#curl -L http://npmjs.org/install.sh | sudo sh
npm install npm@4.4.1 -g
sudo ln -s $(which node) /usr/local/bin/npm

echo "start less"

# install lessc
sudo npm install -g less
