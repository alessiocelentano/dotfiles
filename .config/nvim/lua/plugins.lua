return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'navarasu/onedark.nvim'
    use 'sainnhe/edge'

    -- Colorschemes related
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'norcalli/nvim-colorizer.lua'
    use 'rktjmp/lush.nvim'

    -- Completion
    use { 'ms-jpq/coq_nvim', branch = 'coq'}
    use { 'ms-jpq/coq.artifacts', branch= 'artifacts'}
    use {'neoclide/coc.nvim', branch = 'release'}

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    
    -- Debugger
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'

    -- Statusline
    use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
end)
