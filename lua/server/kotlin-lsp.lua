-- =====================================
-- @path: <server/kotlin-lsp.lua>
-- @brief: Kotlin language server
-- @see: https://github.com/Kotlin/kotlin-lsp
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("kotlin_lsp", {
            capabilities = capabilities,
        })
    end,
}
