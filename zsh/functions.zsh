brew-up(){
    brew update;
    brew upgrade $(brew outdated);
    brew cleanup;
    brew prune;
    brew doctor;
}
