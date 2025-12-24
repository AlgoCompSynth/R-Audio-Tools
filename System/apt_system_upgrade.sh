#! /usr/bin/env bash

set -e

echo ""
echo "** System Upgrade **"

export DEBIAN_FRONTEND=noninteractive
echo "Update"
sudo apt-get update -qq \
  >> $LOGFILE 2>&1
echo "Upgrade"
sudo apt-get dist-upgrade -qqy \
  >> $LOGFILE 2>&1
echo "Autoremove"
sudo apt-get autoremove -qqy \
  >> $LOGFILE 2>&1

echo "** Finished System Upgrade **"
