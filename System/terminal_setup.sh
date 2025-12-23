#! /usr/bin/env bash

set -e

echo ""
echo "*** Terminal Setup ***"

echo "Creating \$HOME/Projects, \$HOME/.local/bin, and \$HOME/bin"
mkdir --parents $HOME/Projects
mkdir --parents $HOME/.local/bin
mkdir --parents $HOME/bin

echo "Setting base configuration files"
cp ./System/bashrc $HOME/.bashrc
cp ./System/bash_aliases $HOME/.bash_aliases
cp ./System/vimrc $HOME/.vimrc

echo "Installing Starship"
./System/install_starship.sh
mkdir --parents $HOME/.config
cp ./System/starship.toml $HOME/.config/starship.toml

echo "Adding Starship prompt to bash"
echo 'eval "$(starship init bash)"' >> $HOME/.bashrc

echo "Installing nerd font with ligatures"
./System/nerd_fonts.sh

echo "*** Finished ***"
