return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "python", "cpp", "c", "java" },
            jkhighlight = { enable = true },
        })
    end,
}
-- return {
--     "nvim-treesitter/nvim-treesitter",
--     main = "nvim-treesitter.configs",
--     branch = "master", -- 详见本系列的附录
--     event = "VeryLazy",
--     opts = {
--         ensure_installed = { "lua", "pyright" },
--         highlight = { enable = true }
--     },
-- }
