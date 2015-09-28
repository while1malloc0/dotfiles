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

# Customize to your needs...
bindkey 'jj' vi-cmd-mode
export PAPERTRAIL_API_TOKEN='PbbaZElGSgDbbLw9dCvr'
set -o vi
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
alias gitgraph='git log --graph --oneline --all'

export WUNDERLIST_ACCESS_TOKEN='edeb2271fe6793d1a94aa8d67cf81aa7754a35794067017335f9ef8cae13'
export WUNDERLIST_CLIENT_ID='6d8fbbde4fcf3153e491'
