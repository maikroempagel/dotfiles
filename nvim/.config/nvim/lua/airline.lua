local cmd = vim.cmd
local g = vim.g

-- enable tabline
g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tabline#left_sep'] = ''
g['airline#extensions#tabline#left_alt_sep'] = ''
g['airline#extensions#tabline#right_sep'] = ''
g['airline#extensions#tabline#right_alt_sep'] = ''

-- enable powerline fonts
g.airline_powerline_fonts = 1
g.airline_left_sep = ''
g.airline_right_sep = ''

g.webdevicons_enable_airline_tabline = 1
g.webdevicons_enable_airline_statusline = 1

-- set theme
g.airline_theme = 'onedark'

-- always show tabs
cmd 'set showtabline=2'

-- we don't need to see things like -- INSERT -- anymore
cmd 'set noshowmode'
