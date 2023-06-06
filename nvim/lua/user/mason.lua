local util = require("lspconfig.util")
local settings = require("user.lsp.handlers")

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "solargraph", "tsserver" }
})

require("lspconfig").tsserver.setup({
  on_attach = settings.on_attach
})

require("lspconfig").lua_ls.setup(settings)

require("user.lsp.null-ls")
