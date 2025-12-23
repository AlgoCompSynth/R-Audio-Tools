#! /usr/bin/env bash

set -e

echo ""
echo "* Base Container *"

mkdir --parents $PWD/Logs
export LOGFILE=$PWD/Logs/create_container.log
rm --force $LOGFILE

echo ""
echo "Setting environment variables"
source set_container_envars.sh

echo ""
echo "Stopping any existing distrobox container $DBX_CONTAINER_NAME"
distrobox stop --yes $DBX_CONTAINER_NAME || true

echo "Removing any existing distrobox home directory $DBX_CONTAINER_DIRECTORY"
rm -rf $DBX_CONTAINER_DIRECTORY

echo "Setting container and image names"
echo "[$DBX_CONTAINER_NAME]" > distrobox.ini
echo "image=$DBX_CONTAINER_IMAGE" >> distrobox.ini
cat distrobox.ini.$COMPUTE_MODE >> distrobox.ini

echo ""
echo "Creating container - installing basic packages"
echo "will take some time."
/usr/bin/time distrobox assemble create --file distrobox.ini \
  >> $LOGFILE 2>&1

echo ""
echo "Copying \$HOME/.ssh into \$DBX_CONTAINER_DIRECTORY"
cp -rp $HOME/.ssh $DBX_CONTAINER_DIRECTORY
echo ""
echo "Entering $DBX_CONTAINER_NAME to configure the"
echo "keyboard and set a password."
sleep 10

distrobox enter "$DBX_CONTAINER_NAME" -- ./System/personalize.sh
distrobox enter "$DBX_CONTAINER_NAME" -- ./System/apt_system_upgrade.sh
distrobox enter "$DBX_CONTAINER_NAME" -- ./System/apt_base_packages.sh
distrobox enter "$DBX_CONTAINER_NAME" -- ./System/terminal_setup.sh
distrobox enter "$DBX_CONTAINER_NAME" -- ./R/R_setup.sh
distrobox enter "$DBX_CONTAINER_NAME" -- ./R/Positron.sh
distrobox enter "$DBX_CONTAINER_NAME" -- ./System/apt_pkg_db_updates.sh

echo "* Base Container Finished *"
