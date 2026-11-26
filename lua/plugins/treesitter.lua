local languages = {
    "lua", "vim", "python", "cpp", "c", "java",
    "markdown", "markdown_inline", "typst", "cmake", "html", "yaml",
}

return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = function()
        require("nvim-treesitter").install(languages, { force = true }):wait(180000)
    end,
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            group = vim.api.nvim_create_augroup("UserTreesitterHighlight", { clear = true }),
            pattern = { "lua", "vim", "python", "cpp", "c", "java", "markdown", "typst", "cmake", "html", "yaml" },
            callback = function(event)
                vim.treesitter.start(event.buf)
            end,
        })
    end,
}
