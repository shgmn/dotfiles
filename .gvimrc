if has('win32')
    set transparency=230

    " メニュー画面の文字化け回避
    source $VIMRUNTIME/delmenu.vim
    set langmenu=ja_jp.utf-8
    source $VIMRUNTIME/menu.vim

elseif has('mac')
    set transparency=10
    set guifont=Monaco:h12
endif
