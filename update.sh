#!/bin/bash
# script to update specified dotfiles to your repo's location

export REPO_LOCATION="$HOME/dotfiles-zer0" # your dotfiles repo location here

# to add a file/folder specify its locaion using $HOME or $XDG_CONFIG_HOME here
declare -a FILES=( 
    $HOME/.profile \
    $HOME/.vimrc \
    $HOME/.zshrc \
    /etc/update-motd.d \
)

for i in "${FILES[@]}"
do
    if [[ $i == *".config"* ]]
    then
        rsync -rl $i $REPO_LOCATION/.config
    else
        rsync -rl $i $REPO_LOCATION
    fi
    echo "Successfully updated $i"
done
