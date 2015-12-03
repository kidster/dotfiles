#!/bin/bash

# create symlinks from the home directory to dotfiles in ~/dotfiles

dir=~/dotfiles
dotfiles=".bash_aliases .bash_profile .cgdb .git .gitconfig .gitignore .inputrc .ipython .tmux.conf .vim .vimrc .wmii-hg .xbindkeysrc"
rawdir="bin"
rawfiles="git-ready rm_pyc"

# symlink dotfiles to the the home dir, each prefixed by a dot (.)
cd $dir
for file in $dotfiles; do
    rm -rf ~/.$file
    ln -s $dir/$file ~/.$file
done

# symlink regular files to the the home dir
for file in $rawdir; do
    rm -rf ~/$file
    ln -s $dir/$file ~/$file
done

# ensure rawfiles are executable
for file in $rawfiles; do
    chmod +x $rawdir/$file
done
