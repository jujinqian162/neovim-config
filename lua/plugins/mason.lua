local servers = {
    ["lua-language-server"] = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
            }
        }
    },
    ["cmake-language-server"] = {},
    pyright = {},
    ["html-lsp"] = {},
    ["css-lsp"] = {},
    ["typescript-language-server"] = {},
    ["clangd"] = {}
}


local function setup(name, config)
    local registry = require "mason-registry"
    local success, package = pcall(registry.get_package, name)
    if success and not package:is_installed() then
        package:install()
    end

    local lsp = require("mason-lspconfig").get_mappings().package_to_lspconfig[name]
    vim.lsp.config(lsp, config)
end

return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
    },
    opts = {},
    config = function (_, opts)
        require("mason").setup(opts)

        for server, config in pairs(servers) do
            setup(server, config)
        end

        vim.cmd("LspStart")
        vim.diagnostic.config({
            update_in_insert = true,
            virtual_text = true,
            underline = true,
        })
    end,
}
