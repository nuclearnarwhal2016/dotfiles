-- Install packer if not installed
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local is_bootstrap = false

-- installs packer
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    vim.cmd([[packadd packer.nvim]])
end

-- using Packer as plugin manager
require("packer").startup(function(use)
    -- Packer
    use({ "wbthomason/packer.nvim" })
    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
        },
    })
    -- treesitter
    use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
    -- Colorscheme
    use({ "catppuccin/nvim", as = "catppuccin" })

    -- completion
    use({
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    })
    -- rust
    use({ "simrat39/rust-tools.nvim" })

    -- ui nicer
    use({ "stevearc/dressing.nvim" })

    -- running code
    use({ "stevearc/overseer.nvim" })

    -- status line
    use({
        "nvim-lualine/lualine.nvim",
        requires = {
            'kyazdani42/nvim-web-devicons', opt = true
        }
    })

    -- github copilot
    -- use({"github/copilot.vim"})

    -- vim-slime
    use({ "jpalardy/vim-slime" })

    -- blank lines
    use "lukas-reineke/indent-blankline.nvim"

    -- undo tree
    use({"mbbill/undotree"})

    if is_bootstrap then
        require("packer").sync()
    end
end)
