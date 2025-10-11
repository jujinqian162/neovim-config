
vim.api.nvim_create_autocmd("WinEnter", {
    pattern = "*",
    callback = function ()
        vim.cmd("silent! wall")
        -- vim.cmd("LspStart")
        -- print("WinEnter")
    end,
    -- command = "silent! wall"
})

vim.api.nvim_create_autocmd("WinLeave", {
    pattern = "*",
    callback = function ()
        vim.cmd("silent! wall")
        vim.cmd("LspStart")
    end,
    -- command = "silent! wall"
})

vim.api.nvim_create_autocmd("BufLeave", {
    pattern = "*",
    callback = function ()
        vim.cmd("silent! wall")
        vim.cmd("LspStart")
    end,
    -- command = "silent! wall"
})
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*",
    callback = function ()
        -- vim.cmd("silent! wall")
        -- vim.cmd("LspStart")
    end,
    -- command = "silent! wall"
})


