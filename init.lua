local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("configs")
require("core.autocmd")
require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

local keymap = vim.api.nvim_set_keymap
local keymapOpt = { noremap = true, silent = true }

-- Splits navigation
keymap("n", "<C-h>", "<C-w>h", keymapOpt)
keymap("n", "<C-j>", "<C-w>j", keymapOpt)
keymap("n", "<C-k>", "<C-w>k", keymapOpt)
keymap("n", "<C-l>", "<C-w>l", keymapOpt)

-- Splits open, close & resize
keymap("n", "<leader>svv", "<C-w>v", keymapOpt) -- open window vertically
keymap("n", "<leader>shh", "<C-w>s", keymapOpt) -- open window horizontally
keymap("n", "<leader>sc", ":close<CR>", keymapOpt) -- close split window
keymap("n", "<leader>se", "<C-w>=", keymapOpt) -- leave the windows the same size
-- vim.api.nvim_set_keymap("n", "+", ":vertical resize +5<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "_", ":vertical resize -5<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "=", ":resize +5<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "-", ":resize -5<CR>", { noremap = true, silent = true })

-- buffers
keymap("n", "tk", ":blast<enter>", keymapOpt)
keymap("n", "tj", ":bfirst<enter>", keymapOpt)
keymap("n", "th", ":bprev<enter>", keymapOpt)
keymap("n", "tl", ":bnext<enter>", keymapOpt)
keymap("n", "td", ":bdelete<enter>", keymapOpt)

-- Stay in indent mode
keymap("v", "<", "<gv", keymapOpt)
keymap("v", ">", ">gv", keymapOpt)
