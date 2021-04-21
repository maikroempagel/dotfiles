require("nvim-treesitter.configs").setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {enable = true},
  indent = {enable = true}
}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- broken!!!
--[[
parser_config.elixir = {
  install_info = {
    url = "https://github.com/Tuxified/tree-sitter-elixir",
    files = {"src/parser.c"},
    branch = "main"
  },
  filetype = "elixir", -- if filetype does not agrees with parser name
  used_by = {}, -- additional filetypes that use this parser
}
--]]
