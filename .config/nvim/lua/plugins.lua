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
    use 'folke/lsp-colors.nvim'

    -- LSP
    use { 'neovim/nvim-lspconfig' }

    -- Completion
    use { 'ms-jpq/coq_nvim', branch = 'coq'}
    use { 'ms-jpq/coq.artifacts', branch = 'artifacts'}

    
    -- Diagnostic
    use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }

    -- Debugger
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'

    -- Statusline
    use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

    -- Statusline plugins
    use { "SmiteshP/nvim-gps", requires = "nvim-treesitter/nvim-treesitter" }
    
    -- Tabline
    use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- Tree
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Finder
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    use 'liuchengxu/vim-clap'

    -- Indent blankline
    use "lukas-reineke/indent-blankline.nvim"

    -- Git
    use 'sindrets/diffview.nvim'

    -- Scroll
    use 'Xuyuanp/scrollbar.nvim'
    use 'karb94/neoscroll.nvim'

    -- Comments
    use 'b3nj5m1n/kommentary'
    use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }

    -- Events fixer
    use { 'antoinemadec/FixCursorHold.nvim' }
end)
