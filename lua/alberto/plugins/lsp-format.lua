return {
    "lukas-reineke/lsp-format.nvim",
    config = function()
        require("lsp-format").setup {}
        local lspcfg = require("lspconfig")
        -- lspcfg.lua_ls.setup { on_attach = require("lsp-format").on_attach }
        -- none-ls does not have a builtin jsonnet
        lspcfg.jsonnet_ls.setup { on_attach = require("lsp-format").on_attach }
        -- lspcfg.bashls.setup { on_attach = require("lsp-format").on_attach }
    end
}
