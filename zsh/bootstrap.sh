#!/bin/bash

set -e

source $PWD/../utilities.sh

echo 'Setting up ZSH'

echo '[1/3] Checking for ZSH'
command -v zsh > /dev/null 2>&1 || {
  echo 'Installing ZSH'
  install_cmd 'zsh'
}

echo '[2/3] Checking if ZSH is the current shell'
if ! [ $(echo $0) == 'zsh' ]; then
  chsh -s $(command -v zsh)
fi

echo '[3/3] Linking zshrc'
ln -s $PWD/zshrc ~/.zshrc > /dev/null/ 2>&1

echo 'Finished setting up ZSH'
