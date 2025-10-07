return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function(_, opts)
        require("toggleterm").setup({
            open_mapping = [[<leader>tt]],
            direction = float,
        })

    end-- 自动调用 setup()
}
