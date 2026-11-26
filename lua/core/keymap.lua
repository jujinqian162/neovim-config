vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = '保存当前文件' })
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = '关闭当前窗口' })

vim.keymap.set('i', 'jj', '<Esc>', {})
-- 光标快速移动
vim.keymap.set('n', '<S-j>', '15jzz')
vim.keymap.set('n', '<S-k>', '15kzz')

-- -----视觉模式---------
-- 单行或多行移动 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "左右分屏" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "上下分屏" })

-- some plugins keymap

vim.keymap.set('n', "<leader>fr", "<cmd>GrugFar<CR>", { desc = "跨文件搜索替换" })
