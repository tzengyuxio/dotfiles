#!/bin/bash

dir=`pwd`/home                        # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

echo $dir
for filepath in $dir/*; do
    filename=$(basename "$filepath")
    echo "Moving any existing dotfiles from ~ to $olddir"
    #TODO check if file existed to prevent mv error msg
    mv ~/.$filename ~/dotfiles_old/
    echo "Creating symlink to $filename in home directory."
    ln -s $filepath ~/.$filename
done
