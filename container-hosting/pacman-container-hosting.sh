#! /usr/bin/env bash

set -e

echo ""
echo "* pacman Container Hosting *"

mkdir --parents $PWD/Logfiles
export LOGFILE=$PWD/Logfiles/pacman-container-hosting.log
rm --force $LOGFILE

sudo pacman --sync --refresh --sysupgrade --noconfirm \
  podman \
  >> $LOGFILE 2>&1

./distrobox.sh

echo "* Finished pacman Container Hosting *"
