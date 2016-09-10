#!/usr/bin/env bash

################################################################################
# install
#
# This script symlinks the dotfiles into place in the home directory.
################################################################################


fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

set -e # Terminate script if anything exits with a non-zero value
set -u # Prevent unset variables

files="gitconfig gitignore_global gitmessage tmux.conf vimrc zshrc"
DOTFILES_DIR=$HOME/dotfiles

fancy_echo "Installing dotfiles..."

for file in $files; do
  if [ -f $HOME/.$file ]; then
    fancy_echo ".$file already present. Backing up..."
    cp $HOME/.$file "$HOME/.${file}_backup"
    rm -f $HOME/.$file
  fi
  fancy_echo "-> Linking $DOTFILES_DIR/$file to $HOME/.$file..."
  ln -nfs "$DOTFILES_DIR/$file" "$HOME/.$file"
done

fancy_echo "Dotfiles installation complete!"
