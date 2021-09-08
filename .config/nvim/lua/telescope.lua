local map = vim.api.nvim_set_keymap
local opts = {noremap = true}
vim.g.mapleader = " "

map('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', opts)
map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', opts)
map('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', opts)
map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', opts)

