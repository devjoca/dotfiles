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
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" require by Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

" show dotfiles in ctrlp
let g:ctrlp_show_hidden = 1

" set color 256
set t_Co=256

colorscheme gruvbox
set background=dark    " Setting dark mode

" set theme for airline
let g:airline_theme='gruvbox'

