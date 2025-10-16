return {

    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- {
        --     "nvim-telescope/telescope-fzf-native.nvim",
        --     build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && "
        --         .. "cmake --build build --config Release && "
        --         .. "cmake --install build --prefix build",
        -- }
    },
    config = function ()
        local telescope = require("telescope")
        -- telescope.load_extension("fzf")
        local builtin  = require("telescope.builtin")
        telescope.setup({
            defaults = {
                layout_config = {
                    vertical = { width = 0.5 }
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown"
                },
                live_grep = {
                    theme = "dropdown"
                }
            },
            extension = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
            }
        })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'find files'})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep'})
        vim.keymap.set('n', '<leader>fd', builtin.current_buffer_fuzzy_find, { desc = 'find in file'})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers'})
    end
}
