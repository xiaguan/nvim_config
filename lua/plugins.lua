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
    -- nvim-tree : the file  tree on the leftside
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- bufferline : tabs you know
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    -- highligh nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    -- coc-nvim 
    use {'neoclide/coc.nvim', branch = 'release'}
    use {
         'nvim-telescope/telescope.nvim', tag = '0.1.0',
       requires = { {'nvim-lua/plenary.nvim'} 
       }
	     }
     use {
 	 "nvim-lualine/lualine.nvim",
 	 requires = {"kyazdani42/nvim-web-devicons", opt = true}
 	 }
	  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
    end}
end)
