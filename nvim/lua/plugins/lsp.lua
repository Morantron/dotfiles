-- TODO
return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "solargraph", "tsserver" }
      })

      require("lspconfig").tsserver.setup({})
    end
  },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    'nvimtools/none-ls.nvim',
    dependencies = {
      "morantron/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics

      local api = vim.api

      null_ls.setup {
        debug = false,
        sources = {
          formatting.prettier,
          formatting.stylua,

          -- TODO figure out how to configure this per project
          --diagnostics.rubocop,
          --require("none-ls.diagnostics.eslint"),

          require("none-ls.formatting.standardrb"),
          require("none-ls.diagnostics.standardrb"),
        },
      }
    end
  },
}
