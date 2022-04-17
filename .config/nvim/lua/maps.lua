map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}


-- === My config ===
-- I have mapped Caps Lock as Esc, not here but in the settings of my
-- keyboard because I also use it as i3wm modifier.
-- You can use these two lines if you only want Esc on Caps Lock.
--
-- vim.api.nvim_command('au VimEnter * silent! !setxkbmap -option caps:escape')
-- vim.api.nvim_command('au VimLeave * silent! !setxkbmap -option')

-- Leader Key
vim.g.mapleader = ';'


-- Disable arrow keys
map('n', '<Up>', '<Nop>',  opts)
map('n', '<Down>', '<Nop>',  opts)
map('n', '<Left>', '<Nop>',  opts)
map('n', '<Right>', '<Nop>',  opts)

-- Other
map('n', 'U', '<C-R>', opts)
map('n', '<C-Z>', '<nop', opts)
map('n', '<esc>', ':noh<cr><esc>', opts)
map('n', '<Leader>x', '*``cgn', opts)
map('n', '<Leader>X', '#``cgn', opts)
map('v', '<Leader>cpy', '_<C-V>I#<esc>', opts)


-- === Barbar ===
-- Move to previous/next
map('n', '<Leader>,', ':BufferPrevious<CR>', opts)
map('n', '<Leader>.', ':BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<Leader><', ':BufferMovePrevious<CR>', opts)
map('n', '<Leader>>', ' :BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<Leader>1', ':BufferGoto 1<CR>', opts)
map('n', '<Leader>2', ':BufferGoto 2<CR>', opts)
map('n', '<Leader>3', ':BufferGoto 3<CR>', opts)
map('n', '<Leader>4', ':BufferGoto 4<CR>', opts)
map('n', '<Leader>5', ':BufferGoto 5<CR>', opts)
map('n', '<Leader>6', ':BufferGoto 6<CR>', opts)
map('n', '<Leader>7', ':BufferGoto 7<CR>', opts)
map('n', '<Leader>8', ':BufferGoto 8<CR>', opts)
map('n', '<Leader>9', ':BufferGoto 9<CR>', opts)
map('n', '<Leader>0', ':BufferLast<CR>', opts)

-- Close buffer
map('n', '<Leader>rm', ':BufferClose<CR>', opts)

-- Magic buffer-picking mode
map('n', '<Leader>m', ':BufferPick<CR>', opts)

-- Sort automatically by number
map('n', '<Leader>bb', ':BufferOrderByBufferNumber<CR>', opts)


-- === Dashboard ===
map('n', '<Leader>ss', '<C-u>SessionSave<CR>', {})
map('n', '<Leader>sl', '<C-u>SessionLoad<CR>', {})
map('n', '<Leader>fh', ':DashboardFindHistory<CR>', opts)
map('n', '<Leader>ff', ':DashboardFindFile<CR>', opts)
map('n', '<Leader>fg', '<cmd>Telescope find_files hidden=trueCR>', opts)
map('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', opts)
map('n', '<Leader>fa', ':DashboardFindWord<CR>', opts)
map('n', '<Leader>fb', ':DashboardJumpMark<CR>', opts)
map('n', '<Leader>cn', ':DashboardNewFile<CR>', opts)


-- === Debugger ===
map('n', '<Leader>dd', ':lua require\'dap\'.continue()<CR>', opts)
map('n', '<Leader>bb', ':lua require\'dap\'.toggle_breakpoint()<CR>', opts)
map('n', '<Leader>dr', ':lua require\'dap\'.repl.open()<CR>', opts)


-- === Telescope ===
map('n', '<Leader>ff', '<cmd>Telescope find_files hidden=true<cr>', opts)
map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>', opts)

map('n', '<Leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', opts)
map('n', '<Leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', opts)
map('n', '<Leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', opts)
map('n', '<Leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', opts)


-- === Trouble ===
map("n", "<Leader><Space>", "<cmd>TroubleToggle<cr>", opts) -- Workspace
map("n", "<Leader>d", "<cmd>Trouble lsp_document_diagnostics<cr>", opts)
map("n", "<Leader>l", "<cmd>Trouble loclist<cr>", opts)
map("n", "<Leader>q", "<cmd>Trouble quickfix<cr>", opts)
map("n", "<Leader>r", "<cmd>Trouble lsp_references<cr>", opts)


-- === Terminal ===
map("n", "<Leader><Leader>t", "<cmd>ToggleTerm<cr>", opts)
map("n", "<Leader><leader>tp", "<cmd>TermExec cmd='python3 *.py'<cr>", opts)


