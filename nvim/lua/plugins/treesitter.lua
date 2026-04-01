-- Neovim 0.12 has built-in treesitter highlighting via vim.treesitter.start().
-- We just need to enable it for all filetypes that have a parser installed.
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})

return {}
