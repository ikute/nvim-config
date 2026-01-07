-- =====================================
-- @path: <server/efm-langserver.lua>
-- @brief: General purpose language server 
-- @see: https://github.com/mattn/efm-langserver
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("efm", {
            capabilities = capabilities,
            filetypes = {
                "c",
                "go",
                "html",
                "json",
                "lua",
                "markdown",
                "sh",
                "toml",
                "yaml",
            },
            init_options = {
                documentFormatting = true,
                documentRangeFormatting = true,
                hover = true,
                documentSymbol = true,
                codeAction = true,
                completion = true,
            },
            settings = {
                languages = {
                    c = {},
                    go = {},
                    html = {},
                    json = {},
                    lua = {},
                    markdown = {},
                    sh = {},
                    toml = {},
                    yaml = {},
                },
            },
        })
    end
}
