return {

    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function ()
        local telescope = require("telescope")
        local builtin  = require("telescope.builtin")
        telescope.setup({
            defaults = {
                layout_config = {
                    vertical = { width = 0.5 }
                },
                file_ignore_patterns = {
                    "%.git/",
                }
            },
            pickers = {
                find_files = {
                    theme = "dropdown",
                    hidden = true,
                },
                live_grep = {
                    theme = "dropdown"
                }
            },
        })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '按文件名查找' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '搜索项目里的内容' })
        vim.keymap.set('n', '<leader>fd', builtin.current_buffer_fuzzy_find, { desc = '搜索当前文件' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '选择已打开的文件' })
    end
}
