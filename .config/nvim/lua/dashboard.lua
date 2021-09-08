local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.leader = ' '
vim.g.dashboard_default_executive = 'telescope'

map('n', '<leader>ss', '<C-u>SessionSave<CR>', {})
map('n', '<leader>sl', '<C-u>SessionLoad<CR>', {})
map('n', '<leader>fh', ':DashboardFindHistory<CR>', opts)
map('n', '<leader>ff', ':DashboardFindFile<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope find_files hidden=trueCR>', opts)
map('n', '<leader>tc', ':DashboardChangeColorscheme<CR>', opts)
map('n', '<leader>fa', ':DashboardFindWord<CR>', opts)
map('n', '<leader>fb', ':DashboardJumpMark<CR>', opts)
map('n', '<leader>cn', ':DashboardNewFile<CR>', opts)

local ascii = {}
ascii[1] = ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗'
ascii[2] = ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║'
ascii[3] = ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║'
ascii[4] = ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║'
ascii[5] = ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║'
ascii[6] = ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝'
vim.g.dashboard_custom_header = ascii

-- TODO: add a Find File global with hidden files
