return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function(_, _)
        require("toggleterm").setup({
            -- open_mapping = [[<leader>tt]],
            shade_terminals = true,
            direction = "float",
            float_opts = {
                border = "curved",
            },
            on_create = function(term)
                vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]], {
                    buffer = term.bufnr,
                    desc = '回到普通模式',
                })
            end,
        })
        vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { desc = '浮动终端' })
        vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = '底部终端' })

    end-- 自动调用 setup()
}
