return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "bashls",
                    -- "rust_analyzer",
                    "clangd",
                    -- "eslint",
                    -- "rome",
                    -- "pyre"
                }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup({})
            lspconfig.jsonnet_ls.setup({})
            lspconfig.bashls.setup({})
            -- lspconfig.rust_analyzer.setup({})
            lspconfig.clangd.setup({})
            -- lspconfig.eslint.setup ({})
            -- lspconfig.rome.setup ({})
            -- lspconfig.pyre.setup ({})
        end
    }
}
