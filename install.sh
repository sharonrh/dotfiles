#! /bin/bash

# TODO: prints warning & gives prompt to continue
# TODO: remove if file exists, replacing it with symbolic link

# sublime
ln -s ~/dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/'Package Control.sublime-settings' ~/.config/sublime-text-3/Packages/User/'Package Control.sublime-settings'

# git
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

# tmux
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# bash
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile

# vscode
ln -s ~/dotfiles/settings.json ~/.config/Code/User/settings.json
ln -s ~/dotfiles/keybindings.json ~/.config/Code/User/keybindings.json

# vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
