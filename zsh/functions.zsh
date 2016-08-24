brew-up(){
    brew update;
    brew upgrade $(brew outdated);
    brew cleanup;
    brew prune;
    brew doctor;
}

nb() {
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref head)
  git checkout -b johnt/$CURRENT_BRANCH/$1
}

pr() {
  CURRENT_BRANCH=$(git rev-parse --abbrev-ref head)
  PARENT_BRANCH=$(echo $CURRENT_BRANCH | cut -d '/' -f2)
  REPO_NAME=$(basename `git rev-parse --show-toplevel`)
  git push -u origin $CURRENT_BRANCH
  open "https://github.com/Betterment/$REPO_NAME/compare/$PARENT_BRANCH...$CURRENT_BRANCH?expand=1"
}

watch(){
  CTIME=$(stat -f "%m" scratch);
  FILE=$1
  CMD=$2
  clear
  echo "Watching $FILE..."
  while true; do
    if [ $(stat -f "%m" $FILE) -gt $CTIME ]
      then
        clear
        echo "$FILE changed. Executing $CMD"
        echo "==========================="
        CTIME=$(stat -f "%m" $FILE);
        $CMD;
        echo "==========================="
        echo "Watching $FILE..."
    fi
    sleep 1;
  done
}

