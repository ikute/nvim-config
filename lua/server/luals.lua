-- =====================================
-- @path: <server/luals.lua>
-- @brief: Lua language server
-- @see: https://github.com/LuaLS/lua-language-server
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"},
                    },
                    workspace = {
                        library = {
                            vim.fn.expand("$VIMRUNTIME/lua"),
                            vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
                        },
                    },
                },
            },
        })
    end,
}
