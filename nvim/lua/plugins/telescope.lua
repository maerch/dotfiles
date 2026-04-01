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
            truncate = 3
          },
          dynamic_preview_title = true
        },
        pickers = {
          lsp_references = {
            show_line = false,
            theme = 'cursor',
            layout_config = {
              width = 0.7,
              height = 0.3,
              preview_width = 0.3,
            },
          },
          find_files = {
            hidden = false,
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
