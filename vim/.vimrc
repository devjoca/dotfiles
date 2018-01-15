" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Set relative number
set relativenumber
set number

" set tabspace to 4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" require by Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'StanAngeloff/php.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

" show dotfiles in ctrlp
let g:ctrlp_show_hidden = 1

" set color 256
set t_Co=256

colorscheme Tomorrow-Night-Eighties

" set theme for airline
let g:airline_theme='base16_eighties'
