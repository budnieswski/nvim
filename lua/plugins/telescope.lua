return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", enabled = vim.fn.executable("make") == 1, build = "make" }, -- better performance
		"nvim-telescope/telescope-ui-select.nvim", -- provide better 'call action'
		"nvim-telescope/telescope-live-grep-args.nvim", -- provide args for live_grep
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope-live-grep-args.actions")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "node_modules", "vendor" },
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
				live_grep_args = {
					auto_quoting = true,
					mappings = {
						i = {
							["<C-k>"] = actions.quote_prompt(),
							["<C-i>"] = actions.quote_prompt({ postfix = " -ig " }), -- ignore case and glob pattern
						},
					},
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
		telescope.load_extension("live_grep_args")

		vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", telescope.extensions.live_grep_args.live_grep_args, { noremap = true })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
	end,
}
