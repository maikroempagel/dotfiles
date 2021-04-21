-- config
local t = require('telescope')
-- This will load fzy_native and have it override the default file sorter
t.setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

t.load_extension('fzy_native')

-- key mappings
local mk = require('helpers').mapkey

mk('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>")
mk('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>")
mk('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>")
mk('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>")
