return {
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = "TSUpdate",
    config = function()
      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = { "c", "javascript", "typescript", "tsx", "json", "lua" },

        highlight = {
          enable = true,
        },
        refactor = {
          highlight_definitions = {
            enable = true,
            -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = true,
          },
        },
      }
    end
  },
  { "nvim-treesitter/playground" },
}
