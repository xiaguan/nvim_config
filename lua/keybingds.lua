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
