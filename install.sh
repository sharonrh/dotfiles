#! /bin/bash

# TODO: prints warning & gives prompt to continue
# TODO: remove if file exists, replacing it with symbolic link

ln -s ~/dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/'Package Control.sublime-settings' ~/.config/sublime-text-3/Packages/User/'Package Control.sublime-settings'
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/settings.json ~/.config/Code/User/settings.json
ln -s ~/dotfiles/keybindings.json ~/.config/Code/User/keybindings.json
