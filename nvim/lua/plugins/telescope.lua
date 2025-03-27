return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
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
            show_line = false,
            theme = 'cursor',
          },
          find_files = {
            hidden = true,
            -- theme = 'dropdown',
          },
        },
        extensions = {
          fzf = {},
          live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            mappings = { -- extend mappings
              i = {
                ["<C-k>"] = lga_actions.quote_prompt(),
              },
            },
          },
        },
      }

      require'telescope'.load_extension'live_grep_args'
      require'telescope'.load_extension'fzf'
    end
  },
  { "nvim-telescope/telescope-live-grep-args.nvim" },
  { "nvim-telescope/telescope-fzf-native.nvim", build = 'make' },
  { 'nvim-treesitter/nvim-treesitter-refactor' },
}
