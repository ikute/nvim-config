-- =====================================
-- @path: <plugin/trouble.lua>
-- @brief: Diagnostics, references, telescope results, quickfix and location lists 
-- @see: https://github.com/folke/trouble.nvim
-- =====================================

return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    lazy = true,
    keys = {
        {
            "<leader>xx",
            "<Cmd>Trouble diagnostics toggle<CR>",
            desc = "Workspace diagnostics (trouble)",
        },
        {
            "<leader>xX",
            "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>",
            desc = "Buffer diagnostics (trouble)",
        },
        {
            "<leader>cs",
            "<Cmd>Trouble symbols toggle focus=false<CR>",
            desc = "Symbols (trouble)",
        },
        {
            "<leader>cl",
            "<Cmd>Trouble lsp toggle focus=false win.position=right<CR>",
            desc = "LSP defenitions / references / ... (trouble)",
        },
        {
            "<leader>xL",
            "<Cmd>Trouble loclist toggle<CR>",
            desc = "Location list (trouble)",
        },
        {
            "<leader>xQ",
            "<Cmd>Trouble qflist toggle<CR>",
            desc = "Quickfix list (trouble)",
        },
    },
}
