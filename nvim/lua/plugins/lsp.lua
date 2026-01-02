return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Only for lua development
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      vim.diagnostic.config({
        signs = false,  -- This disables the signs in the sign column
        -- Other diagnostic settings can remain as needed
        virtual_text = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      vim.lsp.config('lua_ls', {})
      vim.lsp.enable('lua_ls')
    end
  }
}
