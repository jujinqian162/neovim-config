vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', {})
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', {})
vim.keymap.set('n', '<leader>wq', '<cmd>wqall<CR>', {})

vim.keymap.set('i', 'jj', '<Esc>', {})


-- -----视觉模式---------
-- 单行或多行移动 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
