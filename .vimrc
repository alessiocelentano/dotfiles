" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim


" Plugin
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
call vundle#end()
filetype plugin indent on


" Highlight
set t_Co=256
colorscheme PaperColor
set background=dark
syntax on


" Encoding
set encoding=utf-8


" Line Numbering
set nu


" Clipboard
set clipboard=unnamed
