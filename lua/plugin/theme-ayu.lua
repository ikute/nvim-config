-- =====================================
-- @path: <plugin/theme-ayu.lua>
-- @brief: Ayu theme
-- @see: https://github.com/ayu-theme/ayu-vim/
-- =====================================

return {
    "ayu-theme/ayu-vim",
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.g.ayucolor = "light"
        -- vim.cmd("colorscheme ayu")
    end,
}
