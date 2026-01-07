-- =====================================
-- @path: <plugin/lspconfig.lua>
-- @brief: Collection of LSP server configurations for Neovim LSP client
-- @see: https://github.com/neovim/nvim-lspconfig
-- =====================================

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {"mason-org/mason.nvim", opts = {}},
    },
    config = function()
        vim.diagnostic.config({
            signs = {
                [vim.diagnostic.severity.ERROR] = "",
                [vim.diagnostic.severity.WARN] = "",
                [vim.diagnostic.severity.INFO] = "",
                [vim.diagnostic.severity.HINT] = "",
            },
        })

        require("server.luals").config({})

        vim.lsp.enable({
            "lua_ls"
        })
    end,
}
