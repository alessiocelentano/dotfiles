" === Variables ===
" Onedark
lua vim.g.onedark_darker_diagnostics = false
lua vim.g.onedark_diagnostics_undercurl = false
lua vim.g.onedark_better_performance = 1

" Cursorline
lua vim.g.cursorhold_updatetime = 100
lua vim.g.cursorline_timeout = 0

" COQ
lua vim.g.coq_settings = { auto_start = 'shut-up' }


" === Highlight ===
syntax on
autocmd FileType json syntax match Comment +\/\/.\+$+

if (empty($TMUX))
  if (has('nvim'))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has('termguicolors'))
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


" === Misc ===
set hidden
set nobackup
set nowritebackup
set nocompatible
set autochdir
set nu
set encoding=UTF-8
set cmdheight=2
set updatetime=300
set laststatus=2
set signcolumn=number
set shortmess+=c
set clipboard+=unnamedplus


" === Setup ===
lua require('onedark').setup()
lua require('colorizer').setup()
lua require('lspconfig').pyright.setup{}
lua require('lspconfig').sourcekit.setup{}
lua require("trouble").setup{}


" === External files === 
lua require('plugins')
lua require('debugger')
lua require('statusline')
lua require('barbar')
lua require('treesitter')
lua require('maps')
lua require('telescope')
lua require('dashboard')
lua require('indent')
lua require('scroll')
lua require('todo-comments')
lua require("trouble-config")
lua tree = require('tree')
