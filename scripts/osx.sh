#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/vimfiles ~/.vim

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
