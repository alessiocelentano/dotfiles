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
Plugin 'sheerun/vim-polyglot'
Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'vim-vdebug/vdebug'
call vundle#end()

" Highlight
syntax on
colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Fzf shortcuts
let $FZF_DEFAULT_COMMAND = 'ag -u -g "" path $HOME'

" Map
map ; :FZF --exact $HOME<CR>
map ,t :NERDTreeFind<CR>
map ,c :NERDTreeToggle<CR>

" Others
filetype plugin indent on
set encoding=utf-8
set nu
set clipboard=unnamedplus
set laststatus=2
set autochdir

