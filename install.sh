#!/bin/bash

# OSX only implementation for now
if [ "$(uname)" == "Darwin" ]; then
    if [ ! -f ~/dotfiles/.extra ]; then 
       # Creating .extra file in ~/dotfiles.
       # This is for bash settings that you dont want to push publically.
       touch ~/dotfiles/.extra 
    fi

    ln -s ~/dotfiles/.bash_profile ~/.bash_profile
    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/.bash_prompt ~/.bash_prompt
    ln -s ~/dotfiles/.gitconfig ~/.gitconfig
    ln -s ~/dotfiles/.jshintrc ~/.jshintrc
    ln -s ~/dotfiles/.exports ~/.exports
    ln -s ~/dotfiles/.extra ~/.extra
    ln -s ~/dotfiles/.git-completion ~/.git-completion
    ln -s ~/dotfiles/.vimrc ~/.vimrc
    ln -s ~/dotfiles/.Xresources ~/.Xresources
    ln -s ~/dotfiles/.bashrc ~/.bashrc

    # reload our bash_profile
    source ~/.bash_profile
fi
