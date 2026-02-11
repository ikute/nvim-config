-- =====================================
-- @path: <server/ols.lua>
-- @brief: Odin language server
-- @see: https://github.com/DanielGavin/ols/
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("ols", {
            capabilities = capabilities,
        })
    end,
}
