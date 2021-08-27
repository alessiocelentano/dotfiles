" Vundle
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
Plugin 'maximbaz/lightline-ale'
Plugin 'vim-vdebug/vdebug'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'chrisbra/csv.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'joshdick/onedark.vim'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'kaicataldo/material.vim'
Plugin 'lervag/vimtex'
Plugin 'kyoz/purify', { 'rtp': 'vim' }
Plugin 'ryanoasis/vim-devicons'
Plugin 'wakatime/vim-wakatime'
Plugin 'ayu-theme/ayu-vim'
Plugin 'mengelbrecht/lightline-bufferline'
call vundle#end()
 
" Lighline
set showtabline=2
set noshowmode

let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#unnamed = '[No Name]'
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
let g:lightline#bufferline#unicode_symbols = 1

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \   [ 'readonly', 'absolutepath', 'modified' ] ],
      \   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
      \   [ 'lineinfo' ],
      \   [ 'percent' ],
      \   [ 'fileformat', 'fileencoding', 'filetype' ] ],
      \ },
      \ 'tabline': {
      \   'left': [ [ 'buffers' ] ],
      \   'right': [ [  ] ]
      \ },
      \ 'component_expand': {
      \   'linter_checking': 'lightline#ale#checking',
      \   'linter_infos': 'lightline#ale#infos',
      \   'linter_warnings': 'lightline#ale#warnings',
      \   'linter_errors': 'lightline#ale#errors',
      \   'linter_ok': 'lightline#ale#ok',
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'linter_checking': 'right',
      \   'linter_infos': 'right',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'right',
      \   'buffers': 'tabsel'
      \ },
      \ 'component_function' : {
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype'
      \ }
      \ }

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" Highlight
set termguicolors
syntax on
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
colorscheme onedark

" Indentation
filetype plugin indent on
set autoindent
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

" Editor
set showmatch
set ignorecase
set hlsearch
set number
set wildmode=longest,list
au VimEnter * silent! !setxkbmap -option caps:escape
au VimLeave * silent! !setxkbmap -option

" Map
let $FZF_DEFAULT_COMMAND = 'ag -u -g "" path /'
let mapleader = " "
nnoremap <Leader><Leader> :NERDTreeToggle<CR>
nnoremap <Leader>s :FZF --exact $HOME<CR>
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Misc
set nocompatible
set encoding=UTF-8
set nu
set clipboard=unnamedplus
set laststatus=2
set autochdir
set hidden

