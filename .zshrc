#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

dotdir=$(dirname $0:A)

# Customize to your needs...
source "$dotdir/aliases.zsh"
source "$dotdir/key-bindings.zsh"
source "$dotdir/vi-mode.zsh"


if [[ "$(uname)" == "Darwin" ]]; then
    source ~/.osx
fi

source /usr/local/bin/virtualenvwrapper.sh

if [[ "$(uname)" == "Darwin" ]]; then
    powerlinedir='/usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh'
else
    powerlinedir='/usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh'
fi

source $powerlinedir


