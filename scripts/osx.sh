#!/bin/sh

# $HOMEへシンボリックリンクを貼る
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/vimfiles ~/.vim

# 最高優先度のApplication下のvimrc、gvimrcを無効化
echo "let g:vimrc_local_finish = 1\nset langmenu=ja_ja.utf-8.macvim" > /Applications/MacVim.app/Contents/Resources/vim/vimrc_local.vim && echo "let g:gvimrc_local_finish = 1" > /Applications/MacVim.app/Contents/Resources/vim/gvimrc_local.vim

# NeoBundleリポジトリをクローン
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
