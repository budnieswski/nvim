return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	--config = function()
	--  vim.keymap.set('n', '<leader>b', ":Neotree toggle<CR>", {})
	--end
	keys = {
		{
			"<leader>fe",
			function()
				require("neo-tree.command").execute({ toggle = true, reveal_force_cwd = true })
			end,
			desc = "Explorer NeoTree (cwd)",
		},
		{
			"<leader>be",
			function()
				require("neo-tree.command").execute({ source = "buffers", toggle = true })
			end,
			desc = "Buffer explorer",
		},
	},
}
