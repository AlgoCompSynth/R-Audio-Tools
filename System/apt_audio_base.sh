#! /usr/bin/env bash

set -e

echo ""
echo "** Audio Base Packages **"

export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -qqy --no-install-recommends \
  alsa-utils \
  ffmpeg \
  flac \
  libsox-fmt-all \
  libsox-dev \
  libsox3 \
  libsoxr-dev \
  libsoxr0 \
  mp3splt \
  pmidi \
  rtkit \
  sox \
  >> $LOGFILE 2>&1

echo "** Finished Audio Base Packages **"
