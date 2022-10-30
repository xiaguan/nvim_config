lua require("basic")
lua require("plugins")

" load keybings
lua require("keybingds")

" plugin config
lua require("config/bufferline")
lua require("config/nvimtree")
lua require("config/nvim-treesitter")
lua require("config/coc-nvim")
lua require("config/lualine")
" schema gruvbox zephyr
colorscheme zephyr

let g:coc_global_extensions = ['coc-json','coc-clangd','coc-cmake','coc-python']

