#! /usr/bin/env bash

set -e

echo ""
echo "*** Personalization ***"

echo "Setting keyboard configuration"
sudo apt-get install --assume-yes \
  keyboard-configuration

echo "Setting password for $USER"
sudo passwd $USER

echo "*** Finished ***!"
