#!/bin/bash

bootstrap_list=( 'zsh' 'tmux' )

for folder in "${bootstrap_list[@]}"; do
  pushd $folder
    echo 'Bootstrapping "$folder"'
    $PWD/bootstrap.sh
  popd
done
