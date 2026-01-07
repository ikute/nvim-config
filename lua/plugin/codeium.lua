-- =====================================
-- @path: <plugin/codeium.lua>
-- @brief: Windsurf
-- @see: https://github.com/neovim/nvim-lspconfig
-- =====================================

return {
    "Exafunction/windsurf.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        if vim.fn.has("linux") then
            require("codeium").setup({})
        end
    end,
}
