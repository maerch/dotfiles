local telescope = require('telescope');
local lga_actions = require('telescope-live-grep-args.actions')

telescope.setup{
  defaults = {
    cache_picker = {
      num_pickers = 10
    },
    path_display = {
      "truncate"
    },
    dynamic_preview_title = true
  },
  pickers = {
    lsp_references = {
      show_line = false
    },
    find_files = {
      hidden = true
    },
  },
  extensions = {
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      mappings = { -- extend mappings
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
        },
      },
    },
  }
}

require'telescope'.load_extension'live_grep_args'
require'telescope'.load_extension'fzf'

