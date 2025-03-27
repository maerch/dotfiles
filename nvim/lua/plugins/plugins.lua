-- import your plugins
return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  { 'airblade/vim-gitgutter' },
  { 'airblade/vim-rooter' },

  { 'prettier/vim-prettier' },

  { "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "nvim-treesitter/playground" },
  { "nvim-telescope/telescope.nvim", dependencies = { 'nvim-lua/plenary.nvim' } },
  { "nvim-telescope/telescope-live-grep-args.nvim" },
  { "nvim-telescope/telescope-fzf-native.nvim", build = 'make' },
  { 'nvim-treesitter/nvim-treesitter-refactor' },
  { 'neovim/nvim-lspconfig' },
  { "williamboman/mason.nvim" },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'github/copilot.vim' },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration

      -- Only one of these is needed, not both.
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      triggers = {
        { "f",        mode = { "n", "v" } },
        { "<leader>", mode = { "n", "v" } },
        { "]",        mode = { "n", "v" } },
        { "[",        mode = { "n", "v" } },
      }
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)"
      }
    }
  }
}
