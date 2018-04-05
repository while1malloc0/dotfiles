#!/usr/bin/env bash

install_brew() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

if [ "$(uname)" == "Darwin" ]; then
  command -v brew > /dev/null 2>&1 || install_brew
  brew bundle
fi

bootstraps=( 'zsh' 'tmux' 'vim' )
for dir in "${bootstraps[@]}"; do
    ./$dir/bootstrap.sh	
done
