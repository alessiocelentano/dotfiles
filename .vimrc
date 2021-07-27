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
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'chrisbra/csv.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'joshdick/onedark.vim'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'lervag/vimtex'
Plugin 'kyoz/purify', { 'rtp': 'vim' }
call vundle#end()

" Highlight
syntax on
set termguicolors
colorscheme purify

" Tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd Filetype c setlocal tabstop=8
autocmd Filetype c setlocal softtabstop=8
autocmd Filetype c setlocal shiftwidth=8
autocmd Filetype cpp setlocal tabstop=8
autocmd Filetype cpp setlocal softtabstop=8
autocmd Filetype cpp setlocal shiftwidth=8

" Fzf shortcuts
let $FZF_DEFAULT_COMMAND = 'ag -u -g "" path $HOME'

" Map
map ; :FZF --exact $HOME<CR>
map ,t :NERDTreeFind<CR>
map ,c :NERDTreeToggle<CR>

" Misc
filetype plugin indent on
set encoding=utf-8
set nu
set clipboard=unnamedplus
set laststatus=2
set autochdir
