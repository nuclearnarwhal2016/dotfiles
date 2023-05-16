require("overseer").setup({
    templates = {
	"builtin",
	"user.cpp_build",
	"user.assembly_build",
	"user.assembly_to_exe",
    },
})

local nnoremap = require("keymap").nnoremap
nnoremap("<leader>r", "<cmd>OverseerRun<CR>")
