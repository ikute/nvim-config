-- =====================================
-- @path: <server/rust-analyzer.lua>
-- @brief: Rust language server
-- @see: https://github.com/rust-lang/rust-analyzer/
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("rust_analyzer", {
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {},
            },
        })
    end,
}
