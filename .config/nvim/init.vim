" === Highlight ===
syntax on
lua require('onedark').setup()
lua vim.g.onedark_darker_diagnostics = false
lua vim.g.onedark_diagnostics_undercurl = false
lua vim.g.onedark_better_performance = 1
lua require'colorizer'.setup()
autocmd FileType json syntax match Comment +\/\/.\+$+

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" === Editor ===
filetype plugin indent on
set autoindent smarttab expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype c setlocal tabstop=8 softtabstop=8 shiftwidth=8
autocmd Filetype cpp setlocal tabstop=8 softtabstop=8 shiftwidth=8
set showmatch
set ignorecase
set hlsearch
set number
set wildmode=longest,list
hi EndOfBuffer guifg=bg
" Requires nvim-cursorline
let g:cursorhold_updatetime = 100
let g:cursorline_timeout = 0
" Requires coq_nvim
let g:coq_settings = { 'auto_start': 'shut-up' }
 

" === Tree ===
lua require'nvim-web-devicons'.get_icon(filename, extension, options)
hi NvimTreeNormal guibg=bg
hi NvimTreeEndOfBuffer guifg=bg guibg=bg


" === Misc ===
set hidden
set nocompatible
set encoding=UTF-8
set nu
set clipboard+=unnamedplus
set laststatus=2
set autochdir


" === External files === 
lua require('plugins')
lua require('debugger')
lua require('statusline')
lua require('barbar')
lua require('treesitter')
lua require('maps')
lua require('telescope')
lua require('dashboard')
lua tree = require('tree')
