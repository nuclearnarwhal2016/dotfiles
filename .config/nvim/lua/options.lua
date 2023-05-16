local set = vim.opt

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.nu = true
set.relativenumber = true
set.scrolloff = 8
set.shiftwidth = 4
set.termguicolors = true

set.swapfile = false
set.smartindent = true
set.wrap = false

set.hlsearch = false
set.incsearch = true


-- colorscheme
vim.cmd.colorscheme "catppuccin"

vim.cmd("filetype plugin on")
