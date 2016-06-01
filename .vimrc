set nocompatible

" プラグインがインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/dein.vim'

set runtimepath^=~/.vim/dein/dein.vim
"   set runtimepath

" 設定開始
if dein#load_state(s:dein_dir)
   call dein#begin(s:dein_dir)

" プラグインリストを収めた TOML ファイル
" 予め TOML ファイル（後述）を用意しておく
   let g:rc_dir    = expand('~/.vim/dein/rc')
   let s:toml      = g:rc_dir . '/dein.toml'
   let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

" TOML を読み込み、キャッシュしておく
   call dein#load_toml(s:toml,      {'lazy': 0})
   call dein#load_toml(s:lazy_toml, {'lazy': 1})

" 設定終了
   call dein#end()
   call dein#save_state()
endif

filetype plugin indent on

" もし、未インストールものものがあったらインストール
if dein#check_install()
   call dein#install()
endif

" その他の設定
set mouse=
colorscheme desert
syntax on
set nohlsearch
set number
set title
set ambiwidth=double
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
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
nnoremap Y y$

