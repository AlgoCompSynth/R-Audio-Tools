#! /usr/bin/env bash

set -e

mkdir --parents $PWD/Logs
export LOGFILE=$PWD/Logs/R_setup.log
rm --force $LOGFILE

echo "Setting R profiles HOME/.Rprofile and HOME/.Renviron"
cp ./R/Rprofile $HOME/.Rprofile
# https://forum.posit.co/t/timedatectl-had-status-1/72060/5
echo $(set | grep ^TZ) >> $HOME/.Renviron

echo "Installing bibtool and qpdf"
/usr/bin/time sudo apt-get install -qqy --no-install-recommends \
  bibtool \
  qpdf \
  >> $LOGFILE 2>&1
