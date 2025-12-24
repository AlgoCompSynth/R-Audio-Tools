#! /usr/bin/env bash

set -e

echo ""
echo "* Developer Packages *"

echo "Setting environment variables"
source set_container_envars.sh

export LOGFILE=$LOGFILES/developer_packages.log
rm --force $LOGFILE

echo "Installing R developer packages - this takes some time."
/usr/bin/time distrobox enter "$DBX_CONTAINER_NAME" -- ./R/developer_packages.R \
  >> $LOGFILE 2>&1

echo "* Developer Packages Finished *"
