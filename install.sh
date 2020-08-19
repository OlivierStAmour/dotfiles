#!/bin/bash

DOTFILES_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# vim
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf
ln -sfv "$DOTFILES_DIR/nvim/init.vim" ~/.config/nvim/init.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundles


