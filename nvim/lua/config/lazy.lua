-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader><leader>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>b", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ initial_mode = 'normal', previewer = false }))<cr>", opts)
keymap("n", "<leader>gg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "\\g", "<cmd>Telescope grep_string<cr>", opts)

keymap("n", "<leader>gd", "<cmd>Gvdiff<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Git<cr>", opts)

vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format()' ]]
keymap("n", "<leader>cf", ":Format<cr>", opts)

keymap("n", "<leader>co", ':lua vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}})<CR>', opts)


keymap("n", "<leader>hl", ":set hlsearch!<CR>", opts)

keymap(
  "n",
  "gl",
  '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
  opts
)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "dracula" } },
  -- automatically check for plugin updates
  checker = { enabled = true, notify = false },
})
