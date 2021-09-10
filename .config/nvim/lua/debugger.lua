local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
local dap = require('dap')
vim.g.mapleader = " "

map('n', '<leader>d', ':lua require\'dap\'.continue()<CR>', opts)
map('n', '<leader>b', ':lua require\'dap\'.toggle_breakpoint()<CR>', opts)
map('n', '<leader>dr', ':lua require\'dap\'.repl.open()<CR>', opts)


-- === Python Debugger Configuration ===
dap.adapters.python = {
  type = 'executable';
  command = '/usr/bin/python3';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
  },
}


-- === C++ Debugger Configuration ===
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = "lldb"
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp


-- === Debugger UI ===
require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {
    open_on_start = true,
    elements = {
      { id = "scopes", size = 1 },
    },
    size = 60,
    position = "left",
  },
  windows = { indent = 1 },
})

require('dap')
    vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='', numhl=''})

vim.g.dap_virtual_text = 'all frames'

-- require("debugger-colorscheme").setup()
