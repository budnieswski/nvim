return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local cap = require("catppuccin")
	-- 		cap.setup({
	-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 		})
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	name = "kanagawa",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd.colorscheme("kanagawa")
	-- 	end,
	-- },
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		priority = 1000,
		config = function()
			local cap = require("onedark")
			cap.setup({
				style = "warmer",
			})
			vim.cmd.colorscheme("onedark")
		end,
	},
}
