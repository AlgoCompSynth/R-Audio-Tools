#! /usr/bin/env bash

set -e

echo ""
echo "** Base Packages **"

export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -qqy --no-install-recommends \
  apt-file \
  bash-completion \
  build-essential \
  cmake \
  curl \
  file \
  git \
  gpg-agent \
  lsb-release \
  lynx \
  man-db \
  minicom \
  pkg-config \
  plocate \
  python3-dev \
  python3-pip \
  python3-setuptools \
  python3-venv \
  python3-wheel \
  screen \
  speedtest-cli \
  time \
  tmux \
  tree \
  unzip \
  usbutils \
  vim \
  wget \
  >> $LOGFILE 2>&1

echo "** Finished Base Packages **"
