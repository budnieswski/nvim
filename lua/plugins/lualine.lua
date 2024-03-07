return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_a = { "buffers" },
				lualine_c = { { "filename", path = 1 } }, -- 0=filename | 1=relative path | 2=absolute path
			},
		})
	end,
}
