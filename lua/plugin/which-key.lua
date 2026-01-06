-- =====================================
-- @path: <plugin/which-key.lua>
-- @brief: Neovim keybinding help
-- @see: https://github.com/folke/which-key.nvim
-- =====================================

return {
    "folke/which-key.nvim",
    events = "VeryLazy",
    opts = {},
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({global = false})
            end,
            desc = "Buffer local keymaps (which-key)",
        },
    },
}
