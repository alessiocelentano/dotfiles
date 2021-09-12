-- === Variables ===
-- Onedark
vim.g.onedark_darker_diagnostics = false
vim.g.onedark_diagnostics_undercurl = false
vim.g.onedark_better_performance = 1

-- Cursorline
vim.g.cursorhold_updatetime = 100
vim.g.cursorline_timeout = 0

-- COQ
vim.g.coq_settings = { auto_start = "shut-up" }


-- === Highlight ===
vim.api.nvim_exec([[autocmd FileType json syntax match Comment +\/\/.\+$+]], false)
vim.g["NVIM_TUI_ENABLE_TRUE_COLOR"] = 1
vim.opt.termguicolors = true



-- === Editor ===
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.api.nvim_exec([[autocmd Filetype c setlocal tabstop=8 softtabstop=8 shiftwidth=8]], false)
vim.api.nvim_exec([[autocmd Filetype cpp setlocal tabstop=8 softtabstop=8 shiftwidth=8]], false)
vim.opt.incsearch = true
ignorecase = true
smartcase = true
hlsearch = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.number = true
vim.opt.wildmode = { longest = true, list = true }


-- === Misc ===
vim.opt.hidden = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.compatible = false
vim.opt.autochdir = true
vim.opt.nu = true
vim.opt.encoding = "UTF-8"
vim.opt.cmdheight = 2
vim.opt.updatetime = 300
vim.opt.laststatus = 2
vim.opt.signcolumn = "number"
vim.opt.shortmess:append("c")
vim.opt.clipboard:append("unnamedplus")


-- === Setup ===
require("onedark").setup()
require("colorizer").setup()
require("lspconfig").pyright.setup({})
require("lspconfig").sourcekit.setup({})
require("trouble").setup()
require("neoscroll").setup()
vim.cmd[[hi EndOfBuffer guifg=bg]] -- TODO: Fix this line


-- === External files === 
require("barbar")
require("dashboard")
require("debugger")
require("indent")
require("maps")
require("plugins")
require("scroll")
require("statusline")
require("treesitter")
tree = require("tree")
