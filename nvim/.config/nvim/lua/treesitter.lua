local c = require("nvim-treesitter.configs")

c.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {enable = true},
  indent = {enable = true}
}

c.setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
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
