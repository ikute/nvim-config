-- =====================================
-- @path: <config/keymaps.lua>
-- @brief: Keymap
-- =====================================

-- Leader bindings
vim.g.mapleader = " "
vim.gcmaplocalleader = " "

-- Quick config editing
vim.keymap.set("n", "<leader>rc", "<Cmd>e ~/.config/nvim<CR>", {desc = "Quick config editing"})

-- Cursor navigation
vim.keymap.set("n", "n", "nzzzv", {desc = "Next search result (centered)"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "Previous search result (centered)"})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Half page down (centered)"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Half page up (centered)"})

-- Indenting in visual mode
vim.keymap.set("v", "<", "<gv", {desc = "Indent left and reselect"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent righth and reselect"})

-- Line joining
vim.keymap.set("n", "J", "mzJ`z", {desc = "Join lines and keep cursor position"})
