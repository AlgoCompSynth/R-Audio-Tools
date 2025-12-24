#! /usr/bin/env bash

set -e

echo ""
echo "* Developer Packages *"

echo "Setting environment variables"
source set_container_envars.sh

export LOGFILE=$LOGFILES/audio_packages.log
rm --force $LOGFILE

echo "Installing Linux audio base"
distrobox enter "$DBX_CONTAINER_NAME" -- ./System/apt_audio_base.sh \
  >> $LOGFILE 2>&1

echo "Installing R audio packages - this takes some time."
/usr/bin/time distrobox enter "$DBX_CONTAINER_NAME" -- ./R/audio_packages.R \
  >> $LOGFILE 2>&1

echo "* Developer Packages Finished *"
