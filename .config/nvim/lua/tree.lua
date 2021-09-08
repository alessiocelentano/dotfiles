vim.api.nvim_set_keymap('n', '<space><space>', '<cmd> lua tree.toggle()<CR>', {noremap = true, silent = true})

require'nvim-web-devicons'.get_icon(filename, extension, options)
vim.cmd("hi NvimTreeNormal guibg=bg")
vim.cmd("hi NvimTreeEndOfBuffer guifg=bg guibg=bg")

local tree = {}
local g = vim.g
g.nvim_tree_width = 30
local tree_width = vim.g.nvim_tree_width
tree.toggle = function()
   require('nvim-tree').toggle()
  if require('nvim-tree.view').win_open() then
   require('bufferline.state').set_offset(tree_width + 1, 'FileTree')
   require('nvim-tree').find_file(true)
 else
    require('bufferline.state').set_offset(0)
 end
end

return tree
