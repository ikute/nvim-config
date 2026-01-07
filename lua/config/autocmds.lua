-- =====================================
-- @path: <config/autocmds.lua>
-- @brief: Automatically running commands
-- =====================================

-- Restore cursor position on file reopening
local last_cursor_group = vim.api.nvim_create_augroup("LastCursorGroup", {})
vim.api.nvim_create_autocmd("BufReadPost", {
    group = last_cursor_group,
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

-- Highlight the yanked text
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYankGroup", {})
vim.api.nvim_create_autocmd("TextYankPost", {
    group = highlight_yank_group,
    pattern = "*",
    callback = function()
        vim.hl.on_yank({
            higroup = "IncSearch",
            timeout = 200,
        })
    end,
})

-- Lsp keymap
local lsp_on_attach_group = vim.api.nvim_create_augroup("LspKeymapGroup", {})
vim.api.nvim_create_autocmd("LspAttach", {
    group = lsp_on_attach_group,
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if not client then
            return
        end

        local bufnr = event.buf
        local opts = {
            noremap = true,
            silent = true,
            buffer = bufnr,
        }

        vim.keymap.set("n", "<leader>gd", "<Cmd>Lspsaga peek_definition<CR>", opts)
        vim.keymap.set("n", "<leader>gD", "<Cmd>Lspsaga goto_definition<CR>", opts)
        vim.keymap.set("n", "<leader>gS", "<Cmd>vsplit | Lspsaga goto_definition<CR>", opts)
        vim.keymap.set("n", "<leader>ca", "<Cmd>Lspsaga code_action<CR>", opts)
        vim.keymap.set("n", "<leader>rn", "<Cmd>Lspsaga rename<CR>", opts)
        vim.keymap.set("n", "<leader>D", "<Cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
        vim.keymap.set("n", "<leader>d", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
        vim.keymap.set("n", "<leader>pd", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
        vim.keymap.set("n", "<leader>nd", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
        vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)

        vim.keymap.set("n", "<leader>fd", "<Cmd>FzfLua lsp_finder<CR>", opts)
        vim.keymap.set("n", "<leader>fr", "<Cmd>FzfLua lsp_references<CR>", opts)
        vim.keymap.set("n", "<leader>ft", "<Cmd>FzfLua lsp_typedefs<CR>", opts)
        vim.keymap.set("n", "<leader>fs", "<Cmd>FzfLua lsp_document_symbols<CR>", opts)
        vim.keymap.set("n", "<leader>fw", "<Cmd>FzfLua lsp_workspace_symbols<CR>", opts)
        vim.keymap.set("n", "<leader>fi", "<Cmd>FzfLua lsp_implementations<CR>", opts)

        if client:supports_method("textDocument/codeAction", bufnr) then
            vim.keymap.set("n", "<leader>oi", function()
                vim.lsp.buf.code_action({
                    context = {
                        only = {"source.organizeImports"},
                        diagnostics = {},
                    },
                    apply = true,
                    bufnr = bufnr,
                })

                vim.defer_fn(function()
                    vim.lsp.buf.format({bufnr = bufnr})
                end, 50)
            end, opts)
        end
    end,
})

-- Format on save (efm-langserver)
local lsp_fmt_group = vim.api.nvim_create_augroup("FormatOnSaveGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    group = lsp_fmt_group,
    callback = function()
        local efm = vim.lsp.get_clients({name = "efm"})
        if vim.tbl_isempty(efm) then
            return
        end
        vim.lsp.buf.format({name = "efm", async = true})
    end,
})
