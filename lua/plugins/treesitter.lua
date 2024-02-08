return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "vim", "go", "javascript", "typescript", "tsx", "html", "make", "yaml" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
