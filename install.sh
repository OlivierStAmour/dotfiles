#!/bin/bash

DOTFILES_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# vim
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc


