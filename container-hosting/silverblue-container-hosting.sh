#! /usr/bin/env bash

set -e

echo ""
echo "* Silverblue Container Hosting *"

mkdir --parents $PWD/Logfiles
export LOGFILE=$PWD/Logfiles/silverblue-container-hosting.log
rm --force $LOGFILE

./distrobox.sh

echo "* Finished Silverblue Container Hosting *"
