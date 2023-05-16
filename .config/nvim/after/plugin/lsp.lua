local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'rust_analyzer'
})

lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<S-Space>'] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local nnoremap = require("keymap").nnoremap
local inoremap = require("keymap").inoremap

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    nnoremap("gd", function() vim.lsp.buf.definition() end, opts)
    nnoremap("K", function() vim.lsp.buf.hover() end, opts)
    nnoremap("<leader>ls", function() vim.lsp.buf.workspace_symbol() end, opts)
    nnoremap("<leader>ld", function() vim.diagnostic.open_float() end, opts)
    nnoremap("[d", function() vim.diagnostic.goto_next() end, opts)
    nnoremap("]d", function() vim.diagnostic.goto_prev() end, opts)
    nnoremap("<leader>lca", function() vim.lsp.buf.code_action() end, opts)
    nnoremap("<leader>lfr", function() vim.lsp.buf.references() end, opts)
    nnoremap("<leader>lrn", function() vim.lsp.buf.rename() end, opts)
    inoremap("<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()
vim.diagnostic.config({
    virtual_text = true
})
