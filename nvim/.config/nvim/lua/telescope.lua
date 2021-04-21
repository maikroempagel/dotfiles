local mk = require('helpers').mapkey

mk('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>")
mk('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>")
mk('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>")
mk('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>")
