return {
    "mason-org/mason.nvim",
    version = "^2.0.0",
    dependencies = {
        "neovim/nvim-lspconfig",
        { "mason-org/mason-lspconfig.nvim", version = "^2.0.0" },
        "saghen/blink.cmp",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)
        vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })
        vim.lsp.config("lua_ls", {
            settings = { Lua = { diagnostics = { globals = { "vim" } } } },
        })
        require("mason-lspconfig").setup({ automatic_enable = true })

        vim.diagnostic.config({
            update_in_insert = false,
            virtual_text = true,
            underline = true,
        })
    end,
}
