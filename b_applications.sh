#! /usr/bin/env bash

set -e

echo ""
echo "** Applications **"

echo ""
echo "Setting environment variables"
source set_container_envars.sh

pushd Apps > /dev/null
  ./install_all.sh
popd > /dev/null

pushd Scripts > /dev/null
  ./apt_pkg_db_updates.sh
popd > /dev/null

echo ""
echo "** Applications Finished **"
