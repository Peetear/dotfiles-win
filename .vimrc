" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Use git protocol.
let g:neobundle#types#git#default_protocol = 'git'

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'elzr/vim-json'

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set number
syntax on

set incsearch
set hlsearch
nmap \q :nohlsearch<CR>

"Powerline plugin
set laststatus=2
set encoding=utf-8

"Syntastic. Although it does auto detect recess, we need to specify it
"otherwise doesnt load
"Need to >npm -g install recess
let g:syntastic_css_checkers=['recess']
let g:syntastic_enable_css_checker = 1
