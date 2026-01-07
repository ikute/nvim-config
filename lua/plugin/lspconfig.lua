-- =====================================
-- @path: <plugin/lspconfig.lua>
-- @brief: Collection of LSP server configurations for Neovim LSP client
-- @see: https://github.com/neovim/nvim-lspconfig
-- =====================================

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {"mason-org/mason.nvim", opts = {}},
        "creativenull/efmls-configs-nvim",
        "hrsh7th/cmp-nvim-lsp",
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

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("server.efm-langserver").config(capabilities)
        require("server.luals").config(capabilities)

        vim.lsp.enable({
            "efm",
            "lua_ls",
        })
    end,
}
