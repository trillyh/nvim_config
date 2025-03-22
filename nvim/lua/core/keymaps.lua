vim.opt.clipboard:append("unnamedplus")
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.backspace = '2'
vim.opt.number = true
-- Set tabstop to 4
vim.opt.tabstop = 4

-- Prevent unintentional insertion of spaces
vim.opt.softtabstop = 0
vim.opt.expandtab = false

-- Use tabs for indentation and set shiftwidth to be the same as tabstop
vim.opt.shiftwidth = 4
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
