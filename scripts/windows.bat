mklink %HOMEPATH%"\_vimrc" %HOMEPATH%"\dotfiles\.vimrc"
mklink %HOMEPATH%"\_gvimrc" %HOMEPATH%"\dotfiles\.gvimrc"
mklink /D %HOMEPATH%"\vimfiles" %HOMEPATH%"\dotfiles\.vim"

cd %HOMEPATH%
git clone https://github.com/Shougo/neobundle.vim "vimfiles/bundle/neobundle.vim"

exit 0