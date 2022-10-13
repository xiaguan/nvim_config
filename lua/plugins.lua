return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- gruvbox theme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }
    -- zephyr-nvim theme
    use 'glepnir/zephyr-nvim'
    -- nvim-tree (新增)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
end)
