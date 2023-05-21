local ok, telescope = pcall(require, "telescope")
if not ok then
    return
end

local nnoremap = require("keymap").nnoremap

telescope.setup({
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },
    },
})


nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fw", "<cmd>Telescope grep_string<CR>")
nnoremap("<leader>fk", "<cmd>Telescope keymaps<CR>")
