#!/bin/bash

DOTFILES_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# vim
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundles


