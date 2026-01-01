vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.autoread = true
vim.opt.showmode = false -- already has lualine so don't need this

-- 如果查找的内容中不存在大写，则大小写不敏感
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 不要在查找之后继续高亮匹配结果
vim.opt.hlsearch = false

-- 有啥用？
vim.opt.termguicolors = true
vim.signcolumn = "yes"

vim.opt.clipboard = "unnamedplus"

-- 更改win默认终端
if vim.fn.has('win32') == 1 then
    vim.opt.shell = "powershell.exe"
    vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command"
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
end
