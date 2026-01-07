-- =====================================
-- @path: <plugin/lspsaga.lua>
-- @brief: Improved lsp interaction
-- @see: https://github.com/nvimdev/lspsaga.nvim
-- =====================================

return {
    "glepnir/lspsaga.nvim",
    lazy = false,
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("lspsaga").setup({
            move_in_saga = {prev = "<C-k>", next = "<C-j>"},
            finder_action_keys = {
                open = "<CR>",
            },
            definition_action_keys = {
                edit = "<CR>",
            },
            lightbulb = {enable = false},
            ui = {
                code_action = "",
            },
        })
    end,
}
