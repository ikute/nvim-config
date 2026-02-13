-- =====================================
-- @path: <server/zls.lua>
-- @brief: Zig language server
-- @see: https://zigtools.org/zls/
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("zls", {
            capabilities = capabilities,
        })
    end,
}
