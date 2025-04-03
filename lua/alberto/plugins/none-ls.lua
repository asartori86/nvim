return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        null_ls.setup({
            sources = {
                -- null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.shfmt,
                null_ls.builtins.formatting.clang_format.with({ extra_args = { "--style=file" } }),
                null_ls.builtins.completion.spell,
                -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
                on_attach = function(client, bufnr)
                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = augroup,
                            buffer = bufnr,
                            callback = function()
                                -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                                -- on later neovim version, you should use
                                -- vim.lsp.buf.format()
                                vim.lsp.buf.formatting_sync()
                            end,
                        })
                    end
                end,
            },
        })
        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
    end,
}
