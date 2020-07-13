" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Plugin
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
call vundle#end()
filetype plugin indent on

" Highlight
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
syntax on
colorscheme onedark

" Encoding
set encoding=utf-8

" Line Numbering
set nu

" Clipboard
set clipboard=unnamedplus
