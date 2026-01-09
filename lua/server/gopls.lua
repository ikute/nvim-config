-- =====================================
-- @path: <server/gopls.lua>
-- @brief: Go language server
-- @see: https://github.com/golang/tools/tree/master/gopls/
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("gopls", {
            capabilities = capabilities,
            filetypes = {"go"},
        })
    end,
}
