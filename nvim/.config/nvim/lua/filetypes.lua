local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')

cmd 'autocmd BufNewFile,BufRead *.ex set filetype=elixir'
cmd 'autocmd BufNewFile,BufRead *.tf set filetype=terraform'
cmd 'autocmd Filetype go map <buffer> <leader>i m`:%!goimports<cr>``'
