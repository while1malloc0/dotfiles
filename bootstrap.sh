#!/bin/bash
git pull
function doIt(){
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "CHANGELOG.txt" -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite exiting files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi

unset doIt
if [ ! $MAC_IS_SETUP ]; then
    ./osx-for-hackers.sh  
fi
echo "source ~/.zshrc" | zsh
export MAC_IS_SETUP=1
