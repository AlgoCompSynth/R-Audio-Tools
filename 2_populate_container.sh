#! /usr/bin/env bash

set -e

echo ""
echo "* Populate Container *"

echo "Setting environment variables"
source set_container_envars.sh

/usr/bin/time distrobox enter "$DBX_CONTAINER_NAME" -- ./a_system_setup.sh
/usr/bin/time distrobox enter "$DBX_CONTAINER_NAME" -- ./b_applications.sh

echo "* Populate Container Finished *"
