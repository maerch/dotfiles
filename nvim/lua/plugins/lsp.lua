return {
  { 'williamboman/mason.nvim', opts = {} },
  { 'williamboman/mason-lspconfig.nvim', ops = {} },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      cmp.setup {
        sources = {
          { name = 'nvim_lsp' }
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
      }
    end
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    ops = {}
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
       local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("typescript-tools").setup {
        capabilities = lsp_capabilities,
        settings = {
          expose_as_code_action = 'all',
        }
      }
    end
  },
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

      vim.keymap.set("n", 'm', vim.diagnostic.open_float)
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "gr", vim.lsp.buf.references)
      vim.keymap.set("n", "gt", vim.lsp.buf.type_definition)
      vim.keymap.set("n", "gh", vim.lsp.buf.code_action)
      vim.keymap.set("n", "gn", vim.diagnostic.goto_next)
      vim.keymap.set("n", "gp", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
      -- local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
    end
  }
}
