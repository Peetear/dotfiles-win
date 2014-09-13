#!/bin/bash

# OSX only implementation for now
if [ "$(uname)" == "Darwin" ]; then
    echo "OSX Detected."
    echo "Creating .extra file in ~/dotfiles. Reminder: This is for bash settings that you dont want to push publically."
    touch ~/dotfiles/.extra # so that the link creataion is guranteed to work.

    # use bash profile. copy it from folder
    echo "Creating symlinks..."
    ln -s ~/dotfiles/.bash_profile ~/.bash_profile
    ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/.bash_prompt ~/.bash_prompt
    ln -s ~/dotfiles/.gitconfig ~/.gitconfig
    ln -s ~/dotfiles/.jshintrc ~/.jshintrc
    ln -s ~/dotfiles/.exports ~/.exports
    ln -s ~/dotfiles/.extra ~/.extra
    ln -s ~/dotfiles/.git-completion ~/.git-completion

    #reload our bash_profile
    source ~/.bash_profile

    echo "*** 8 symlinks created that link to dotfiles directory. You just saved yourself 938274289432 hours of pain. Goodbye"
fi