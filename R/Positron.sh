#! /usr/bin/env bash

set -e

echo ""
echo "** Positron **"

echo "Installing Positron Linux dependencies"
export DEBIAN_FRONTEND=noninteractive
/usr/bin/time sudo apt-get install -qqy --no-install-recommends \
  libcanberra-gtk3-module \
  libnss3 \
  >> $LOGFILE 2>&1

pushd /tmp > /dev/null
  rm -f *.deb
  echo "Downloading Positron"
  curl --location --silent --remote-name \
    $POSITRON_URL
  echo "Installing Positron"
  /usr/bin/time sudo apt-get install -qqy --no-install-recommends \
    ./$POSITRON_PACKAGE \
    >> $LOGFILE 2>&1
popd > /dev/null

echo "** Finished Positron **"
