
--  See `:help vim.keymap.set()`
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear highlights on search when pressing <Esc> in normal mode 
-- See :help hlsearch
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

--  Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not someone will guess without a bit more experience.
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier
-- Use Ctrl+<htns> to switch between windows
-- 
-- See ':help wincmd' for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-s>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-t>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-n>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Switch NeoVim's builtin file explorer
vim.keymap.set('n', '<leader>cd', vim.cmd.Ex)

-- Remap hjkl to comfortable use for dvorak
vim.keymap.set('n', 'h', 'h')
vim.keymap.set('n', 't', 'j')
vim.keymap.set('n', 'n', 'k')
vim.keymap.set('n', 's', 'l')

-- Make it easy to quit vim (Do not consider whether save files or not)
vim.keymap.set('n', '<leader>qu', ':q<CR>')

-- Rename specified word which the LSP server knows
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

