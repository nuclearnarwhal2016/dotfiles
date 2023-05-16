local ok, lualine = pcall(require, "lualine")
if not ok then
	return
end

require("lualine").setup({
    options = {
	theme = "catppuccin"
    }
})
