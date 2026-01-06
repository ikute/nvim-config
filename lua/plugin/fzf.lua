-- =====================================
-- @path: <plugin/fzf.lua>
-- @brief: Improved fzf
-- @see: https://github.com/ibhagwan/fzf-lua
-- =====================================

return {
    "ibhagwan/fzf-lua",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    opts = {},
    keys = {
        {
            "<leader>ff",
            function()
                require("fzf-lua").files()
            end,
            desc = "FZF Files",
        },
        {
            "<leader>fg",
            function()
                require("fzf-lua").live_grep()
            end,
            desc = "FZF Live grep",
        },
        {
            "<leader>fb",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "FZF Buffers",
        },
        {
            "<leader>fh",
            function()
                require("fzf-lua").help_tags()
            end,
            desc = "FZF Help tags",
        },
        {
            "<leader>fx",
            function()
                require("fzf-lua").diagnostics_document()
            end,
            desc = "FZF Diagnostics document",
        },
        {
            "<leader>fX",
            function()
                require("fzf-lua").diagnostics_workspace()
            end,
            desc = "FZF Diagnostics workspace",
        },
        {
            "<leader>fs",
            function()
                require("fzf-lua").lsp_document_symbols()
            end,
            desc = "FZF Document symbols",
        },
        {
            "<leader>fS",
            function()
                require("fzf-lua").lsp_workspace_symbols()
            end,
            desc = "FZF Workspace symbols",
        },
    },
}
