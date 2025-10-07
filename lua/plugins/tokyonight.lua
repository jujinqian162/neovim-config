return {
    "folke/tokyonight.nvim",
    opts = {
        day
    },
    config = function (_, opts)
        require("tokyonight").setup(opts)
        vim.cmd("colorscheme tokyonight")
    end


}
