-- Show line number
vim.opt.number = true

-- Relative line number, to help with jumping
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a' 

-- Sync clipboard between OS and NeoVim

vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Search without distinguishing between upper case and lower case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn by default
vim.opt.signcolumn = 'yes'

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Use spaces instad of taps
vim.opt.expandtab = true
-- Size for spaces using << and >>
vim.opt.shiftwidth = 4
-- Size for spaces for tab
vim.opt.tabstop = 4
-- How many spaces when pressing tab
vim.opt.softtabstop = 4

-- Indentation options
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Sets how neovim will display certain whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'}

-- Preview substitutions live, as you type
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal nubmer of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

-- Don't show the mode
 vim.opt.showmode = false

-- Highlight when yanking text
-- Try it with 'yap' in normal mode
-- See ':help vim.highlight.on_yank()'
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
      vim.highlight.on_yank()
    end,
})
