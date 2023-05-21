require("catppuccin").setup({
    flavor = "macchiato",
    transparent_background = true,
    integrations = {
        telescope = true,
        overseer = true,
        cmp = true,
        treesitter = true,
    },
    custom_highlights = function(colors)
        return {
            LineNr = {fg = colors.peach},
        }
    end
})
