#!/bin/sh

install_cmd() {
  if [ $(uname) == 'Linux' ]; then
    'sudo apt-get install "$1"'
  else
    'brew install "$1"'
  fi
}

echo '============== Setting Up Tmux =============='
echo '[1/4] Checking for tmux'
command -v tmux > /dev/null 2>&1 || install_cmd 'tmux'

echo '[2/4] Linking tmux configuration'
ln -s $PWD/tmux.conf ~/.tmux.conf

echo '[3/4] Checking for tmuxinator'
command -v tmuxinator > /dev/null 2>&1 || {
  command -v gem > /dev/null 2>&1 || { echo >&2 "Tmuxinator require ruby gems. Please install it and rerun this script."; exit 1; }
  echo 'Installing tmuxinator'
  sudo gem install tmuxinator || { echo >&2 "Failed to install tmuxinator. Please see if 'gem install tmuxinator' works and try again"; exit 1; }
}

echo '[4/4] Linking tmuxinator configuration'
ln -s $PWD/tmuxinator ~/.tmuxinator
echo '============== Finished Setting Up Tmux =============='
