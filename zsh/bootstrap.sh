#!/usr/bin/env bash

set -euo pipefail

source "$PWD/../utilities.sh"

echo 'Setting up ZSH'

echo '[1/2] Checking if ZSH is the current shell'
if ! [ "$(echo $0)" == 'zsh' ]; then
  chsh -s "$(command -v zsh)"
fi

echo '[2/2] Linking zshrc'
ln -s "$PWD/zshrc" "$HOME/.zshrc" > /dev/null/ 2>&1

echo 'Finished setting up ZSH'
