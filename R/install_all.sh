#! /usr/bin/env bash

set -e

echo ""
echo "*** R Setup ***"

mkdir --parents Logs
rm --force Logs/*

for script in \
  R_setup.sh \
  Positron.sh
do
  ./$script
done

echo "*** Finished ***"
  #developer_packages.sh \
  #audio_packages.sh \
