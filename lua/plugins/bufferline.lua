return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {},
    keys = {
        { "<leader>bh", "<cmd>BufferLineCyclePrev<CR>", desc = "上一个文件" },
        { "<leader>bl", "<cmd>BufferLineCycleNext<CR>", desc = "下一个文件" },
        { "<leader>bd", "<cmd>bdelete<CR>", desc = "关闭当前文件" },
        { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "关闭其他文件" },
        { "<leader>bp", "<cmd>BufferLinePick<CR>", desc = "按提示选择文件" },
        { "<leader>bc", "<cmd>BufferLinePickClose<CR>", desc = "按提示关闭文件" },
    },
    lazy = false,
}
