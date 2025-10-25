return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        actions = {
            open_file = {
                quit_on_open = true,
            },
        },
        git = {
            ignore = false,
        },
    },
    keys = {
        { "<leader>tr", ":NvimTreeToggle<CR>" },
    },
}

