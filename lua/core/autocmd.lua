local group = vim.api.nvim_create_augroup("UserFileRefresh", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    group = group,
    callback = function(event)
        if vim.bo[event.buf].buftype == "" and not vim.bo[event.buf].modified then
            vim.cmd("checktime " .. event.buf)
        end
    end,
})

