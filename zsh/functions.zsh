brew-up(){
    brew update;
    brew upgrade $(brew outdated);
    brew cleanup;
    brew prune;
    brew doctor;
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

