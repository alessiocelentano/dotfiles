local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '

map("n", "<leader><leader>", "<cmd>TroubleToggle<cr>", opts) -- Workspace
map("n", "<leader>d<leader>", "<cmd>Trouble lsp_document_diagnostics<cr>", opts)
map("n", "<leader>l<leader>", "<cmd>Trouble loclist<cr>", opts)
map("n", "<leader>q<leader>", "<cmd>Trouble quickfix<cr>", opts)
map("n", "<leader>r<leader>", "<cmd>Trouble lsp_references<cr>", opts)
