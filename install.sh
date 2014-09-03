#!/bin/bash

# OSX only implementation for now
if [ "$(uname)" == "Darwin" ]; then
    # use bash profile. copy it from folder
    echo "OSX Detected. Importing .bash_profile"
    ln -s ~/dotfiles/.bash_profile ~/.bash_profile

    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/.bash_prompt ~/.bash_prompt
    ln -s ~/dotfiles/.gitconfig ~/.gitconfig
    ln -s ~/dotfiles/.jshintrc ~/.jshintrc
    ln -s ~/dotfiles/.exports ~/.exports

    #reload our bash_profile
    source ~/.bash_profile

    echo "*** 6 symlinks created that link to dotfiles directory. Goodbye"
fi