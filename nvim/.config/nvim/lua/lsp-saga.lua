-- key mappings
local mk = require('helpers').mapkey

-- lsp provider to find the cursor word definition and reference
mk('n', '<leader>gh', "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>", { silent = true })

-- code action
mk('n', '<leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", { silent = true })
mk('v', '<leader>ca :<C-U>', "<cmd>lua require('lspsaga.codeaction').range_code_action()<CR>", { silent = true })

-- show hover doc
mk('n', '<leader>K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", { silent = true })

-- scroll down hover doc or scroll in definition preview
mk('n', '<leader><C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", { silent = true })
-- scroll up hover doc
mk('n', '<leader><C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", { silent = true })

-- show signature help
mk('n', '<leader>gs', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", { silent = true })

-- rename
mk('n', '<leader>gr', "<cmd>lua require('lspsaga.rename').rename()<CR>", { silent = true })

-- preview definition
mk('n', '<leader>gd', "<cmd>lua require('lspsaga.provider').preview_definition()<CR>", { silent = true })

-- show
mk('n', '<leader>cd', "<cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>")

-- only show diagnostic if cursor is over the area
mk('n', '<leader>cc', "<cmd>lua require('lspsaga.diagnostic').show_cursor_diagnostics()<CR>", { silent = true })

-- jump diagnostic
mk('n', '<leader>[e', "<cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_prev()<CR>", { silent = true })
mk('n', '<leader>]e', "<cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_next()<CR>", { silent = true })

-- float terminal also you can pass the cli command in open_float_terminal function
mk('n', '<leader><A-d>', "<cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>", { silent = true })
mk('t', '<leader><A-d> <C-l>', "<cmd>lua require('lspsaga.floaterm').close_float_terminal()<CR>", { silent = true })

-- config
local saga = require('lspsaga')
saga.init_lsp_saga()
