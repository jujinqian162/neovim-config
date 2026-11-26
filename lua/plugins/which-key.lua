return {
    "folke/which-key.nvim",
    version = "^3.0.0",
    event = "VeryLazy",
    opts = {
        spec = {
            { "<leader>b", group = "已打开的文件" },
            { "<leader>f", group = "查找" },
            { "<leader>h", group = "快速跳转" },
            { "<leader>l", group = "代码导航与格式化" },
            { "<leader>n", group = "Notebook" },
            { "<leader>s", group = "分屏" },
            { "<leader>t", group = "文件树与终端" },
        },
    },
}
