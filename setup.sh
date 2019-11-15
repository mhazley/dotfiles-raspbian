#!/bin/zsh

ln -nfs ~/.dotfiles/gitignore ~/.gitignore_global
ln -nfs ~/.dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -nfs ~/.dotfiles/vimrc ~/.vimrc
ln -nfs ~/.dotfiles/zshrc ~/.zshrc
source ~/.zshrc
mkdir ~/.tmp
