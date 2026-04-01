return{
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'echasnovski/mini.nvim' },
  opts = {
    win_options = {
      showbreak = { rendered = '' },
    },
    overrides = {
      buftype = {
        nofile = { enabled = false },
      },
    },
  },
}
