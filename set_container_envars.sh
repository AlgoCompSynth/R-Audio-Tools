# uncomment next line if you have an NVIDIA GPU
#export COMPUTE_MODE=CUDA
if [[ "$COMPUTE_MODE" != "CUDA" ]]
then
  export COMPUTE_MODE=CPU

fi

export DBX_CONTAINER_NAME="R-Audio-Tools-$COMPUTE_MODE"
export DBX_CONTAINER_IMAGE="docker.io/jmgirard/rstudio2u:noble"
export DBX_CONTAINER_HOME_PREFIX="$HOME/dbx-homes"
export DBX_CONTAINER_DIRECTORY="$DBX_CONTAINER_HOME_PREFIX/$DBX_CONTAINER_NAME"

export ARCH=`uname -m`
echo "ARCH: $ARCH"

export POSITRON_VERSION="2025.12.2-5"

if [[ "$ARCH" = "x86_64" ]]
then
  export POSITRON_PACKAGE="Positron-$POSITRON_VERSION-x64.deb"
  export POSITRON_URL="https://cdn.posit.co/positron/dailies/deb/x86_64/$POSITRON_PACKAGE"
elif [[ "$ARCH" = "aarch64" ]]
then
  export POSITRON_PACKAGE="Positron-$POSITRON_VERSION-arm64.deb"
  export POSITRON_URL="https://cdn.posit.co/positron/dailies/deb/arm64/$POSITRON_PACKAGE"
else
  echo "Unsupported architecture!"
  exit -1
fi
