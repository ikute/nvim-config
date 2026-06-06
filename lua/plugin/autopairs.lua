-- =====================================
-- @path: <plugin/autopairs.lua>
-- @brief: Auto-closing brackets
-- @see: https://github.com/windwp/nvim-autopairs/
-- =====================================

return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function ()
        local autopairs = require("nvim-autopairs")
        autopairs.setup({})
    end,
}
