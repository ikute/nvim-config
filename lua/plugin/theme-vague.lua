-- =====================================
-- @path: <plugin/theme-vague.lua>
-- @brief: Vague theme
-- @see: https://github.com/vague-theme/vague.nvim
-- =====================================

return {
    "vague-theme/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme vague")
    end,
}
