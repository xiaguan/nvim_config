-- set the leader key is space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
  noremap = true,
  silent = true,
}

local map = vim.api.nvim_set_keymap

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "10k", opt)
map("n", "<C-d>", "10j", opt)

-- space + e  oepen file exploer
map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)

-- split window
map("n","sv",":vsplit<CR>",opt)
map("n","sh",":split<CR>",opt)
-- close current windows
map("n","sc",":close<CR>",opt)
-- close all other windows
map("n","so",":only<CR>",opt)

-- bufferline 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
