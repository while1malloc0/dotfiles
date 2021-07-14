#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")/.."

echo 'Setting up ZSH'

echo '===> Installing zsh if necessary'
command -v zsh > /dev/null 2&>1 || sudo apt install zsh

echo '===> Checking if ZSH is the current shell'
if ! [ "$(echo $0)" == 'zsh' ]; then
  sudo chsh $USER -s "$(command -v zsh)"
fi

echo '===> Linking zshrc'
ln -s "$PWD/zsh/zshrc" "$HOME/.zshrc"

echo 'Finished setting up ZSH'
