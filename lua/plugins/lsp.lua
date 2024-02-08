return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "golangci_lint_ls", "tsserver" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig")
      lsp.lua_ls.setup({})
      lsp.gopls.setup({})
      -- lsp.golangci_lint_ls.setup({})
      lsp.tsserver.setup({})

      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
    end
  },
}
