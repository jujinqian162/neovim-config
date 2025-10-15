
vim.api.nvim_create_autocmd("WinEnter", {
    pattern = "*",
    callback = function ()
        vim.cmd("silent! wall")
        -- vim.cmd("LspStart")
        pcall(vim.cmd, "LspStart")
        -- print("WinEnter")
    end,
})

vim.api.nvim_create_autocmd("WinLeave", {
    pattern = "*",
    callback = function ()
        vim.cmd("silent! wall") 
        pcall(vim.cmd, "LspStart") 
    end,
})

vim.api.nvim_create_autocmd("BufLeave", {
    pattern = "*",
    callback = function ()
        vim.cmd("silent! wall")
        pcall(vim.cmd, "LspStart")
    end,
})
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*",
    callback = function ()
        pcall(vim.cmd, "LspStart") 
    end,
})


