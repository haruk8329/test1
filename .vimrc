set nocompatible

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')

" dein.vim 本体のディレクトリをリストの先頭に追加
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

" 設定開始
if dein#load_state(s:dein_dir)
   call dein#begin(s:dein_dir)

" プラグインリストを収めた TOML ファイル
   let g:rc_dir    = expand('~/.vim/dein/rc')

" TOML を読み込み、キャッシュしておく
   call dein#load_toml(g:rc_dir . '/dein.toml',      {'lazy': 0})
   call dein#load_toml(g:rc_dir . '/dein_lazy.toml', {'lazy': 1})

" 設定終了
   call dein#end()
   call dein#save_state()
endif

" 未インストールものものがあったらインストール
if dein#check_install()
   call dein#install()
endif

filetype plugin on

" その他の設定
set mouse=
colorscheme desert
syntax on
set nohlsearch
set number
set title
set ambiwidth=double
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set display=lastline
set showmatch
set matchtime=1
set noswapfile
set nobackup
set viminfo+=n~/.vim/viminfo.txt
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
nnoremap Y y$

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
