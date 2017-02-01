install_cmd() {
  if [ $(uname) == 'Linux' ]; then
    'sudo apt-get install "$1"'
  else
    command -v brew || { echo "Please install Homebrew and run again"; exit 1; }
    'brew install "$1"'
  fi
}
