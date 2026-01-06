-- =====================================
-- @path: <plugin/nvim-tree.lua>
-- @brief: File explorer
-- @see: https://github.com/nvim-tree/nvim-tree.lua
-- =====================================

return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
        vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
        require("nvim-tree").setup({
            filters = {dotfiles = false},
            view = {adaptive_size = true},
        })
    end,
}
