local gem = require "nvim-lsp-installer.installers.gem"

return {
  installer = {
    gem.packages { "irb" },
    gem.packages { "solargraph" },
  }
}
