#! /usr/bin/env bash

set -e

echo ""
echo "** System Setup **"

echo "Setting environment variables"
source set_container_envars.sh

pushd Scripts > /dev/null
  ./apt_system_upgrade.sh
  ./apt_base_packages.sh
  ./terminal_setup.sh
  #./apt_audio_base.sh
  #./apt_command_line_synths.sh
  ./apt_pkg_db_updates.sh
popd > /dev/null

echo "** System Setup Finished **"
