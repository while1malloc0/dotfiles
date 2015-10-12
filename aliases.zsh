alias gitgraph='git log --graph --oneline --all'
alias gpom='git push origin master'
alias cls='clear; ls'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias lsg='ls | grep'
alias :q='exit'
alias less='less -r'
alias tf='tail -f'
alias "brew up"="brew update\
                 && brew install $(brew outdated)\
                 && brew cleanup\
                 && brew prune\
                 && brew doctor"
