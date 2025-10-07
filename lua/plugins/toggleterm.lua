return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function(_, opts)
        require("toggleterm").setup({
            open_mapping = [[<leader>tt]],
            shade_terminals = true,
            direction = "float",
            float_opts = {
                border = "curved",
            },
        })

    end-- 自动调用 setup()
}
