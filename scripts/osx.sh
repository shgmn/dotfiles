#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vim ~/vimfiles

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
