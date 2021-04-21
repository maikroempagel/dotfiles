-------------------- PLUGINS -------------------------------
vim.cmd 'packadd paq-nvim'          -- load the package manager
local paq = require('paq-nvim').paq -- a convenient alias
paq {'savq/paq-nvim', opt = true}   -- paq-nvim manages itself

-- airline tabline
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'

-- color theme
paq 'tjdevries/colorbuddy.nvim'
paq 'marko-cerovac/material.nvim'

-- treesitter
paq {'nvim-treesitter/nvim-treesitter', run = vim.fn[':TSUpdate']}

-- LSP
paq 'neovim/nvim-lspconfig' -- LSP support
paq 'hrsh7th/nvim-compe' -- code completion
paq 'glepnir/lspsaga.nvim'
paq 'onsails/lspkind-nvim' -- add icons to suggestions

-- telescope.nvim
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

paq 'spinks/vim-leader-guide'

-- code formatter
paq 'sbdchd/neoformat'
