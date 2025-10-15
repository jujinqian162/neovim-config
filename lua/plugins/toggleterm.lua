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
        })
        vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', {})
        vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', {})

    end-- 自动调用 setup()
}
