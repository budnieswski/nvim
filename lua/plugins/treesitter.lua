return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { "windwp/nvim-ts-autotag" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "vim", "go", "javascript", "typescript", "tsx", "html", "make", "yaml" },
			auto_install = true,
			autotag = {
				enable = true,
			},
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
