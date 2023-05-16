require("options")
require("mappings")
require("plugins")

require("luasnip.loaders.from_lua").load({paths="~/.config/nvim/LuaSnip/"})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "none" })

vim.g.slime_target ="tmux"
