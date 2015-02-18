set nocompatible        " 挙動を vi 互換ではなく、Vim のデフォルト設定にする
filetype off            " 一旦ファイルタイプ関連を無効化する

" setup plugins
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Add Plugins
NeoBundle 'scrooloose/nerdtree'		  	      " ファイルをtree表示してくれる
NeoBundle 'Townk/vim-autoclose'			        " カッコを自動で閉じてくれる
NeoBundle 'tpope/vim-endwise'	           		" Ruby向けにendを自動挿入してくれる
NeoBundle 'tomtom/tcomment_vim'			        " コメントON/OFFを手軽に実行
NeoBundle 'nathanaelkane/vim-indent-guides'	" インデントに色を付けて見やすくする
NeoBundle 'bronson/vim-trailing-whitespace'	" 行末の半角スペースを可視化
NeoBundle 'w0ng/vim-hybrid'			            " コードをハイライトをする

call neobundle#end()

filetype plugin indent on     " required!
filetype indent on
syntax on

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1


set hlsearch		  " 検索結果をハイライト表示する
set expandtab		  " タブ入力を複数の空白入力に置き換える
set incsearch		  " 検索ワードの最初の文字を入力した時点で検索を開始する
set number		    " 行番号を表示する
set showmatch		  " 対応する括弧やブレースを表示する
set autoindent	  " 改行時に前の行のインデントを継続する
set tabstop=2		  " タブ文字の表示幅
set shiftwidth=2	" Vimが挿入するインデントの幅

" ruby コマンド実行
autocmd BufNewFile,BufRead *.rb nnoremap <C-e> :!ruby %
