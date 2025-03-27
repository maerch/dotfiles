local set = vim.opt

-- check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set.autoread = true;

-- Always show line numbers
set.number = true;

-- Wraps and indicates if a line was wrapped
set.wrap = true
set.showbreak=↪

-- General indentation settings
set.ts = 2;
set.sts=2;
set.sw=2;
set.expandtab = true;

-- Enable mouse support for all modes
set.mouse = a;

-- Minimum number of lines above and below the cursor
set.scrolloff = 10;

-- Highlight current line
set.cursorline = true;

-- Highlight search
set.hlsearch = true;

-- Incremental Search please
set.incsearch = true;

-- Substitution is always global
set.gdefault = true;

set.updatetime = 1000

-- Always show the gutter
set.signcolumn= 'yes'

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight yanked text",
  group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ higroup = 'DiffAdd', timeout = 500 })
  end,
})
