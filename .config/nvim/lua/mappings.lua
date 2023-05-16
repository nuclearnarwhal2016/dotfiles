local Remap = require("keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local vnoremap = Remap.vnoremap
local tnoremap = Remap.tnoremap
local silent = { silent = true }

vim.g.mapleader = " "

-- write and quit
nnoremap("<leader>w", ":w<CR>", silent)
nnoremap("<leader>q", ":q<CR>", silent)

-- ex
nnoremap("<leader>pv", ":Ex<CR>", silent)

-- format
nnoremap("<leader>lf", ":LspZeroFormat<CR>", silent)

-- undo tree
nnoremap("<leader>ut", ":UndotreeToggle<CR>", silent)
