vim.g.mapleader = " "

-- tabs & indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

-- Window
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- cursor & lines
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = true
vim.opt.scrolloff = 10 -- bottom padding when scrolling

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

vim.opt.showcmd = false
vim.opt.backup = false
vim.opt.writebackup = false
