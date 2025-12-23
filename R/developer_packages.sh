#! /usr/bin/env bash

set -e

mkdir --parents $PWD/Logs
export LOGFILE=$PWD/Logs/developer_packages.log
rm --force $LOGFILE

echo "Installing R developer packages - this takes some time."
/usr/bin/time ./developer_packages.R \
  >> $LOGFILE 2>&1

echo "Finished"
