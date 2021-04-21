-- key mappings
local mk = require('helpers').mapkey

mk('n', '<leader>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
mk('n', '<leader>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
mk('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
mk('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
mk('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
mk('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
mk('n', '<leader>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
mk('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
mk('n', '<leader>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

-- server config
local lsp = require 'lspconfig'

lsp.gopls.setup{}
