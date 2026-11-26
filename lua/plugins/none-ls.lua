return {

	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "VeryLazy",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
			},
		})
	end,
	keys = {
		{
			"<leader>lf",
			function()
				vim.lsp.buf.format({ timeout_ms = 3000 })
			end,
			desc = "格式化当前文件",
		},
	},
}
