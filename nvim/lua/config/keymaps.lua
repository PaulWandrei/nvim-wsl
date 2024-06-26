-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<M-n>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<M-p>', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<M-q>', ':bd<CR>', { desc = 'Delete buffer' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
--  buffers
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- tabs
vim.keymap.set('n', '<M-t>', ':tabnext<CR>', { desc = 'Move focus to the upper window' })

-- nvim-ChatGPT
vim.api.nvim_set_keymap('n', '<C-c><C-g>', ':ChatGPT<CR>', { noremap = true, silent = true }) -- open chat gpt dialog
vim.api.nvim_set_keymap('n', '<C-c><C-s>', ':ChatGPTRun summarize<CR>', { noremap = true, silent = true }) -- open chat gpt dialog

-- neogit
vim.api.nvim_set_keymap('n', '<leader>ng', ':Neogit<CR>', { noremap = true, silent = true })

-- lazygit
vim.api.nvim_set_keymap('n', '<leader>lg', ':LazyGit<cr>', { noremap = true, silent = true }) -- open LazyGit

-- text wrap
vim.api.nvim_set_keymap('n', '<leader>ww', ':set wrap!<CR>', { noremap = true, silent = true })

-- diffview
-- vim.api.nvim_set_keymap('n', '<leader>dv', ':DiffviewOpen<CR>', { noremap = true, silent = true })

-- toggle diffview
vim.keymap.set('n', '<leader>dv', function()
  if next(require('diffview.lib').views) == nil then
    vim.cmd 'DiffviewOpen'
  else
    vim.cmd 'DiffviewClose'
  end
end)
