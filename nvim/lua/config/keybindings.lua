local wk = require("which-key")
local builtin = require('telescope.builtin')
local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")

function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
  wk.add({ lhs, mode = mode, desc = opts.desc });
end

-- General bindings
map('i', 'jk',        '<Esc>',          {});
map('n', '<leader>w', ':wall<CR>',      { desc = 'save all' });
map('n', '<Leader>d', ':bd<CR>',        { desc = 'close current buffer' });
map('n', '<leader>q', ':q<CR>',         { desc = 'quit' });
map('v', '<leader>y', '"+y',            { desc = 'yank to OS' });
map('n', '<leader><space>', ':noh<cr>', { desc = 'clear search' });

-- j/k working on wrapped lines
map('n', 'j',  'gj', {});
map('n', 'k',  'gk', {});
map('n', 'gj', 'j',  {});
map('n', 'gk', 'k',  {});

-- Split panes
wk.add({ '<Leader>s', group = "splits" });
map('n', '<Leader>sv', '<C-w>v', { desc = 'split vertically' });
map('n', '<Leader>sh', '<C-w>S', { desc = 'split horizontally' });
map('n', '<Leader>sc', '<C-w>c', { desc = 'split close' });
map('n', '<Leader>so', '<C-w>o', { desc = 'split only current' });

map('n', '<leader>v', ':Neogit<cr>', { desc = 'neogit' });

-- Easy buffer navigation
map('n', '<C-h>', '<C-w>h', {});
map('n', '<C-l>', '<C-w>l', {});

-- Code navigation
wk.add({ ']', group = "Next" });
wk.add({ '[', group = "Prev" });
map('n', ']h', '<Plug>(GitGutterNextHunk)', { desc = 'Next hunk' });
map('n', '[h', '<Plug>(GitGutterPrevHunk)', { desc = 'Prev hunk' });

-- Intendation without losing visual selection
map('v', '>', '>gv', {});
map('v', '<', '<gv', {});

-- Cursor is in the center after search
map('n', 'n', 'nzz', {});
map('n', 'N', 'Nzz', {});
map('n', '*', '*zz', {});
map('n', '#', '#zz', {});

-- Telescope bindings
local live_grep_args_call =  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>";

wk.add({ '<leader>f', group = "find" });
map('n', '<leader>fr', builtin.pickers,                                  { desc = "recent pickers" })
map('n', '<leader>ff', builtin.find_files,                               { desc = "file" });

wk.add({ '<leader>fg', group = "grep" });
map('n', '<leader>fgg', live_grep_args_call,                             { desc = "grep" });
map("n", "<leader>fgw", live_grep_args_shortcuts.grep_word_under_cursor, { desc = "grep word" });
map("v", "<leader>fgv", live_grep_args_shortcuts.grep_visual_selection,  { desc = "grep visual" });

wk.add({ '<leader>fv', group = "vcs (git)" });
map('n', '<leader>fvc', builtin.git_commits,  { desc = "commits" });
map('n', '<leader>fvb', builtin.git_bcommits, { desc = "bcommits" });
map('n', '<leader>fvs', builtin.git_status,   { desc = "status" });

wk.add({ '<leader>fl', group = "lsp" });
map('n', '<leader>flr', builtin.lsp_references,                { desc = "references" })
map('n', '<leader>fls', builtin.lsp_document_symbols,          { desc = "document symbols" })
map('n', '<leader>flw', builtin.lsp_dynamic_workspace_symbols, { desc = "dyn. workspace symbols" })
map('n', '<leader>fli', builtin.lsp_implementations,           { desc = "implementations" })
map('n', '<leader>fld', builtin.lsp_definitions,               { desc = "definitions" })
map('n', '<leader>flt', builtin.lsp_type_definitions,          { desc = "type definitions" })
map('n', '<leader>flx', builtin.diagnostics,                   { desc = "diagnostics" })

map('n', '<leader>fb', builtin.buffers,    { desc = "buffers" });
