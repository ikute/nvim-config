-- =====================================
-- @path: <plugin/lualine.lua>
-- @brief: Neovim statusline
-- @see: https://github.com/nvim-lualine/lualine.nvim
-- =====================================

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("lualine").setup({
            options = {
                theme = "vague",
                icons_enabled = true,
                section_separators = {left = "", right = ""},
                component_separators = "|",
            },
        })
    end,
}
