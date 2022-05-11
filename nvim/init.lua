require "plugins"

require "user.sensibler"
require "user.cmp"
require "user.lsp"
require "user.keymaps"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
require "user.snippets"
require "user.copilot"
require "user.slime"
require "user.null-ls"

vim.cmd [[
  let g:dracula_colorterm = 0
  colors dracula
]]
