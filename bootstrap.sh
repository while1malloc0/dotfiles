#!/usr/bin/env bash

# bootstrap_list=( 'zsh' 'tmux' )

# for folder in "${bootstrap_list[@]}"; do
#   pushd $folder
#     echo 'Bootstrapping "$folder"'
#     $PWD/bootstrap.sh
#   popd
# done

command -v "python" &> /dev/null || { echo "Please install python"; exit 1; }

command -v "pip" &> /dev/null || { echo "Please install pip"; exit 1; }

command -v "ansible-playbook" &> /dev/null || pip install ansible-playbook

ansible-playbook -i "localhost," -c local bootstrap.yml
