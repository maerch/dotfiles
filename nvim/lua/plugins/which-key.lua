return {
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
