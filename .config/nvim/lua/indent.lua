vim.g.indentLine_char_list = {'|', '¦', '┆', '┊'}
vim.g.indent_blankline_filetype_exclude = {'dashboard'}

require("indent_blankline").setup { show_current_context = true }
