require("mason").setup()
require("mason-lspconfig").setup()

-- vim.lsp.set_log_level 'debug'
-- require('vim.lsp.log').set_format_func(vim.inspect)

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").ts_ls.setup({
  capabilities = capabilities,

  on_attach = function()
    vim.keymap.set("n", 'm', vim.diagnostic.open_float, {buffer = 0})
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.references, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gh", vim.lsp.buf.code_action, {buffer=0})
    vim.keymap.set("n", "gn", vim.diagnostic.goto_next, {buffer = 0})
    vim.keymap.set("n", "gp", vim.diagnostic.goto_prev, {buffer = 0})
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
  end
})


-- close quickfix menu after selecting choice
vim.api.nvim_create_autocmd(
  "FileType", {
  pattern={"qf"},
  command=[[nnoremap <buffer> <CR> <CR>:cclose<CR>]]})

require'lspconfig'.eslint.setup{}
