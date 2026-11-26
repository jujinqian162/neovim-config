return {
    "nvimdev/lspsaga.nvim",
    cmd = "Lspsaga",
    opts = {
        finder = {
            keys = {
                toggle_or_open = "<CR>",
            },
        },
    },
    keys = {
        { "<leader>lr", "<cmd>Lspsaga rename<CR>", desc = "重命名符号" },
        { "<leader>lc", "<cmd>Lspsaga code_action<CR>", desc = "查看可用修复" },
        { "<leader>ld", "<cmd>Lspsaga goto_definition<CR>", desc = "跳到定义" },
        { "<leader>lh", "<cmd>Lspsaga hover_doc<CR>", desc = "查看光标处文档" },
        { "<leader>lR", "<cmd>Lspsaga finder<CR>", desc = "查找定义和引用" },
        { "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "下一个诊断" },
        { "<leader>lp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "上一个诊断" },
    }
}

