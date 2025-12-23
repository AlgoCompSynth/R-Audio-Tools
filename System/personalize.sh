#! /usr/bin/env bash

set -e

echo ""
echo "*** Personalization ***"

echo "Setting keyboard configuration"
sudo apt-get install -qqy \
  keyboard-configuration

echo ""
echo ""
echo ""
echo "Setting password for $USER"
sleep 5
sudo passwd $USER

echo "*** Finished ***!"
