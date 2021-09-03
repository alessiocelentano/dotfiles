local gps = require("nvim-gps")
require("nvim-gps").setup({
	icons = {
		["class-name"] = ' ',
		["function-name"] = ' ',
		["method-name"] = ' '
	},
	languages = { },
	separator = ' > ',
})


require('lualine').setup{
  options = {
    theme = 'onedark',
    section_separators = '',
    component_separators = ''
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {
      'filename', {
        gps.get_location,
        condition = gps.is_available
      }
    },
    lualine_x = {'encoding'},
    lualine_y = {
      'filetype', {
        'diagnostics',
         sources = {'coc'},
         symbols = {error = ' ', warn = ' ', info = ' '};
         color_error = '#ec5f67',
         color_warn = '#ECBE7B',
         color_info = '#008080'
      }
    }
  }
}
