dotdir=$(dirname $(readlink ~/.zshrc))

echo $dotdir
# Customize to your needs...
source "$dotdir/aliases.zsh"
source "$dotdir/key-bindings.zsh"
source "$dotdir/vi-mode.zsh"
source "$dotdir/functions.zsh"

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


