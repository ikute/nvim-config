-- =====================================
-- @path: <plugin/cmp.lua>
-- @brief: Completion engine
-- @see: https://github.com/hrsh7th/nvim-cmp
-- =====================================

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "onsails/lspkind.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function()
        local cmp = require("cmp")
        local lspkind = require("lspkind")

        cmp.setup({
            formatting = {
                format = lspkind.cmp_format({
                    mode = "symbol_text",
                    menu = {
                        buffer = "",
                        path = "",
                        nvim_lsp = "🅻",
                    },
                }),
            },

            snippet = {},

            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({select = false}),
            }),

            sources = {
                {name = "nvim_lsp"},
                {name = "buffer"},
                {name = "path"},
                {name = "nvim_lsp_signature_help"},
            },
        })
    end,
}
