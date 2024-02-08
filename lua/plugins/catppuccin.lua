return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local cap = require("catppuccin")
    cap.setup({
			flavour = 'mocha', -- latte, frappe, macchiato, mocha
    })
    vim.cmd.colorscheme "catppuccin"
  end
}
