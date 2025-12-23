#! /usr/bin/env bash

set -e

export LOGFILE=$PWD/Logs/audio_packages.log
rm --force $LOGFILE

echo "Installing R audio packages - this takes some time."
/usr/bin/time ./audio_packages.R \
  >> $LOGFILE 2>&1

echo "Finished"
