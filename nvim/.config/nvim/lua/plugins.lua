-------------------- PLUGINS -------------------------------
vim.cmd 'packadd paq-nvim'          -- load the package manager
local paq = require('paq-nvim').paq -- a convenient alias
paq {'savq/paq-nvim', opt = true}   -- paq-nvim manages itself

-- ui / colors
paq 'yunlingz/ci_dark'
paq 'hoob3rt/lualine.nvim'

-- treesitter
paq {'nvim-treesitter/nvim-treesitter', run = vim.fn[':TSUpdate']}
paq 'nvim-treesitter/playground'

-- LSP
paq 'neovim/nvim-lspconfig' -- LSP support
paq 'hrsh7th/nvim-compe' -- code completion
paq 'glepnir/lspsaga.nvim'
paq 'onsails/lspkind-nvim' -- add icons to suggestions

-- telescope.nvim
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
-- executed the run command manually in the plugin directory
paq 'nvim-telescope/telescope-fzy-native.nvim' --, run = vim.fn['! git submodule update --init --recursive']}

paq 'spinks/vim-leader-guide'

-- code formatter
paq 'sbdchd/neoformat'

-- Golang
paq 'fatih/vim-go'

-- markdown previewer via browser
paq {'iamcco/markdown-preview.nvim', run = vim.fn['mkdp#util#install()']}

-- icons
paq 'kyazdani42/nvim-web-devicons'
paq 'ryanoasis/vim-devicons' -- for plugin integration e.g. airline
