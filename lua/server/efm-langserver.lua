-- =====================================
-- @path: <server/efm-langserver.lua>
-- @brief: General purpose language server 
-- @see: https://github.com/mattn/efm-langserver
-- ====================================

return {
    config = function(capabilities)
        local clangformat = require("efmls-configs.formatters.clang_format")
        local clangtidy = require("efmls-configs.linters.clang_tidy")
        local gofmt = require("efmls-configs.formatters.gofmt")
        local golangcilint = require("efmls-configs.linters.golangci_lint")

        vim.lsp.config("efm", {
            capabilities = capabilities,
            filetypes = {
                "c",
                "go",
                "html",
                "java",
                "json",
                "kotlin",
                "lua",
                "markdown",
                "odin",
                "sh",
                "toml",
                "yaml",
                "zig",
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
                    c = {clangformat, clangtidy},
                    go = {gofmt, golangcilint},
                    html = {},
                    java = {},
                    json = {},
                    kotlin = {},
                    lua = {},
                    markdown = {},
                    odin = {},
                    sh = {},
                    toml = {},
                    yaml = {},
                    zig = {},
                },
            },
        })
    end
}
