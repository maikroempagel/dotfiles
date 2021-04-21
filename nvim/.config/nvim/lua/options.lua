local cmd = vim.cmd
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

local indent = 2

opt('b', 'expandtab', true)      -- use spaces instead of tabs
opt('b', 'shiftwidth', indent)   -- size of an indent
opt('b', 'smartindent', true)    -- insert indents automatically
opt('b', 'tabstop', indent)      -- number of spaces for each tab
opt('o', 'termguicolors', true)  -- true color support
opt('w', 'number', true)         -- print line number

-- highlight current line number
cmd 'set cursorline'
cmd 'highlight clear CursorLine'
