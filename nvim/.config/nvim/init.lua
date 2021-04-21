local cmd = vim.cmd
local fn = vim.fn
local execute = vim.api.nvim_command

require('providers')

---------------------------- Plugins ---------------------------------------------------------
-- auto install paq-nvim if it doesn't exist
local install_path = fn.stdpath('data')..'/site/pack/paqs/opt/paq-nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/savq/paq-nvim.git'..install_path)
end
cmd 'packadd paq-nvim'

-- auto compile when there are changes in plugins.lua
cmd 'autocmd BufWritePost plugins.lua PaqInstall'

require('plugins')

-- set default options and key mappings
require('options')
require('mappings')
require('filetypes')

-- color scheme
require('material-settings') -- load the settings first!
require('colorbuddy').colorscheme('material')

-- airline config
require('airline')

-- LSP (intellisense, code analysis + actions)
require('lsp')
require('compe-config')
require('lsp-saga')
require('lspkind').init()

-- code formatter settings
require('neoformat')

-- Treesitter (syntax highlighting)
require('treesitter')

-- Telescope
require('telescope')

-- display leader key mappings
require('leader-guide')
