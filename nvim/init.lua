require "plugins"

require "user.sensibler"
require "user.cmp"
require "user.lsp"
require "user.keymaps"
require "user.telescope"
require "user.treesitter"
require "user.gitsigns"
require "user.snippets"
require "user.yussh"
--require "user.copilot"
require "user.slime"

vim.cmd [[
  let g:dracula_colorterm = 0
  colors dracula
]]
