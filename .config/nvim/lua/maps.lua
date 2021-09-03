local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = " "

vim.api.nvim_command('au VimEnter * silent! !setxkbmap -option caps:escape')
vim.api.nvim_command('au VimLeave * silent! !setxkbmap -option')

map('n', 'U', '<C-R>', opts)
map('n', '<C-Z>', '<nop', opts)
map('n', '<esc>', ':noh<cr><esc>', opts)
map('n', '<leader>x', '*``cgn', opts)
map('n', '<leader>X', '#``cgn', opts)
map('v', '<leader>cpy', '_<C-V>I#<esc>', opts)
map('n', '<leader><leader>', '<cmd> lua tree.toggle()<CR>',  opts)

-- Disable arrow keys
map('n', '<Up>', '<Nop>',  opts)
map('n', '<Down>', '<Nop>',  opts)
map('n', '<Left>', '<Nop>',  opts)
map('n', '<Right>', '<Nop>',  opts)
