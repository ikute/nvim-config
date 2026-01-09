-- =====================================
-- @path: <server/clangd.lua>
-- @brief: C language server
-- @see: https://clangd.llvm.org/
-- ====================================
return {
    config = function(capabilities)
        vim.lsp.config("clangd", {
            capabilities = capabilities,
            filetypes = {"c"},
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
            },
        })
    end
}
