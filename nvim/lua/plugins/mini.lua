return {
  'echasnovski/mini.nvim',
  version = false,
  style = 'ascii',
  config = function()
    require('mini.icons').setup()
    require('mini.statusline').setup { use_icons = vim.g.have_nerd_font }

  end
}
