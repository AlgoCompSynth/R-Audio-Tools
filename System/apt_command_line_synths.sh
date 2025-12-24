#! /usr/bin/env bash

set -e

echo ""
echo "** Command Line Synths **"

export DEBIAN_FRONTEND=noninteractive
/usr/bin/time sudo apt-get install -qqy --no-install-recommends \
  ffmpeg \
  fluid-soundfont-gm \
  fluid-soundfont-gs \
  fluidsynth \
  freepats \
  timidity \
  timidity-daemon \
  >> $LOGFILE 2>&1

echo "** Finished Command Line Synths **"
