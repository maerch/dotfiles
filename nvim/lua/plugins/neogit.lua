return {
  'NeogitOrg/neogit',
  config = function()
    local neogit = require('neogit')
    neogit.setup({
      kind = 'floating',
      keymaps = {
        -- modify or remove the default keymap for <leader>v
        ["<leader>v"] = false,
      }
    })
  end
}
