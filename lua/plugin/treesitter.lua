-- =====================================
-- @path: <plugin/treesitter.lua>
-- @brief: Neovim treesitter
-- @see: https://github.com/nvim-treesitter/nvim-treesitter
-- =====================================

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    event = {"BufReadPost", "BufNewFile"},
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "c",
                "html",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "toml",
                "vim",
                "vimdoc",
                "yaml",
            },
            auto_install = true,
            sync_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = {enable = true},
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<CR>",
                    scope_incremental = "<TAB>",
                    node_decremental = "<S-TAB>",
                },
            },
        })
    end,
}
