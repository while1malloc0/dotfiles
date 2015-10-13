if [[ -h "$HOME/.zshrc" ]]; then
    unlink $HOME/.zshrc
fi 

ln -s $(pwd)/zsh/zshrc $HOME/.zshrc

if [[ -h "$HOME/.vimrc" ]]; then
    unlink $HOME/.vimrc
fi

ln -s $(pwd)/vim/vimrc $HOME/.vimrc

if [[ -h "$HOME/.vim" ]]; then
    unlink $HOME/.vim
fi


ln -s $(pwd)/vim/vim $HOME/.vim

vim +PluginInstall +qall
