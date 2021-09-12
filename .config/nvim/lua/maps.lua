local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = " "


-- === My config ===
-- Esc to Caps Lock
vim.api.nvim_command('au VimEnter * silent! !setxkbmap -option caps:escape')
vim.api.nvim_command('au VimLeave * silent! !setxkbmap -option')

-- Disable arrow keys
map('n', '<Up>', '<Nop>',  opts)
map('n', '<Down>', '<Nop>',  opts)
map('n', '<Left>', '<Nop>',  opts)
map('n', '<Right>', '<Nop>',  opts)

-- Other
map('n', 'U', '<C-R>', opts)
map('n', '<C-Z>', '<nop', opts)
map('n', '<esc>', ':noh<cr><esc>', opts)
map('n', '<leader>x', '*``cgn', opts)
map('n', '<leader>X', '#``cgn', opts)
map('v', '<leader>cpy', '_<C-V>I#<esc>', opts)


-- === Barbar ===
-- Move to previous/next
map('n', '<Space>,', ':BufferPrevious<CR>', opts)
map('n', '<Space>.', ':BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<Space><', ':BufferMovePrevious<CR>', opts)
map('n', '<Space>>', ' :BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<Space>1', ':BufferGoto 1<CR>', opts)
map('n', '<Space>2', ':BufferGoto 2<CR>', opts)
map('n', '<Space>3', ':BufferGoto 3<CR>', opts)
map('n', '<Space>4', ':BufferGoto 4<CR>', opts)
map('n', '<Space>5', ':BufferGoto 5<CR>', opts)
map('n', '<Space>6', ':BufferGoto 6<CR>', opts)
map('n', '<Space>7', ':BufferGoto 7<CR>', opts)
map('n', '<Space>8', ':BufferGoto 8<CR>', opts)
map('n', '<Space>9', ':BufferGoto 9<CR>', opts)
map('n', '<Space>0', ':BufferLast<CR>', opts)

-- Close buffer
map('n', '<Space>rm', ':BufferClose<CR>', opts)

-- Magic buffer-picking mode
map('n', '<space>m', ':BufferPick<CR>', opts)

-- Sort automatically by number
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)


-- === Dashboard ===
map('n', '<leader>ss', '<C-u>SessionSave<CR>', {})
map('n', '<leader>sl', '<C-u>SessionLoad<CR>', {})
map('n', '<leader>fh', ':DashboardFindHistory<CR>', opts)
map('n', '<leader>ff', ':DashboardFindFile<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope find_files hidden=trueCR>', opts)
map('n', '<leader>tc', ':DashboardChangeColorscheme<CR>', opts)
map('n', '<leader>fa', ':DashboardFindWord<CR>', opts)
map('n', '<leader>fb', ':DashboardJumpMark<CR>', opts)
map('n', '<leader>cn', ':DashboardNewFile<CR>', opts)


-- === Debugger ===
map('n', '<leader>d', ':lua require\'dap\'.continue()<CR>', opts)
map('n', '<leader>b', ':lua require\'dap\'.toggle_breakpoint()<CR>', opts)
map('n', '<leader>dr', ':lua require\'dap\'.repl.open()<CR>', opts)


-- === Telescope ===
map('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<cr>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

map('n', '<leader>ff', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', opts)
map('n', '<leader>fg', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', opts)
map('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', opts)
map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', opts)


-- === Trouble ===
map("n", "<leader><leader>", "<cmd>TroubleToggle<cr>", opts) -- Workspace
map("n", "<leader>d<leader>", "<cmd>Trouble lsp_document_diagnostics<cr>", opts)
map("n", "<leader>l<leader>", "<cmd>Trouble loclist<cr>", opts)
map("n", "<leader>q<leader>", "<cmd>Trouble quickfix<cr>", opts)
map("n", "<leader>r<leader>", "<cmd>Trouble lsp_references<cr>", opts)
