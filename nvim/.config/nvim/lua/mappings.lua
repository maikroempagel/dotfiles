local mk = require('helpers').mapkey

vim.g.mapleader = ' '

-- split navigation
mk('n', '<C-J>', '<C-W><C-J>')
mk('n', '<C-K>', '<C-W><C-K>')
mk('n', '<C-L>', '<C-W><C-L>')
mk('n', '<C-H>', '<C-W><C-H>')
