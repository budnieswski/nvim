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

-- Splits navigation
vim.api.nvim_set_keymap("n", "<leader>sh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sk", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sl", "<C-w>l", { noremap = true, silent = true })

-- Splits open, close & resize
vim.api.nvim_set_keymap("n", "<leader>svv", "<C-w>v", { noremap = true, silent = true })    -- open window vertically
vim.api.nvim_set_keymap("n", "<leader>shh", "<C-w>s", { noremap = true, silent = true })    -- open window horizontally
vim.api.nvim_set_keymap("n", "<leader>sc", ":close<CR>", { noremap = true, silent = true }) -- close split window
vim.api.nvim_set_keymap("n", "<leader>se", "<C-w>=", { noremap = true, silent = true })     -- leave the windows the same size
vim.api.nvim_set_keymap("n", "+", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "_", ":vertical resize -5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "=", ":resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "-", ":resize -5<CR>", { noremap = true, silent = true })

-- Stay in indent mode
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })
