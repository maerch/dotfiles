return {
  {
    'prettier/vim-prettier',
    config = function()
      vim.g['prettier#exec_cmd_async'] = 0
      vim.g['prettier#autoformat'] = 0
      vim.g['prettier#autoformat_require_pragma'] = 0
    end
  }
}
