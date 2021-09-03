local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.bufferline = {
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = false,
  clickable = false,
  icons = 'both',
  icon_custom_colors = false,
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
  insert_at_end = false,
  maximum_padding = 1,
  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = nil,
}

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
