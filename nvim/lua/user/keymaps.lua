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

-- Better window navigation
--keymap("n", "<C-h>", "<C-w>h", opts)
--keymap("n", "<C-j>", "<C-w>j", opts)
--keymap("n", "<C-k>", "<C-w>k", opts)
--keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>gd", "<cmd>Gvdiff<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Git<cr>", opts)
--keymap("n", "<leader>c<leader>", "")
--
--
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
keymap("n", "<leader>cf", ":Format<cr>", opts)

keymap("n", "<leader>hl", ":set hlsearch!<CR>", opts)

keymap(
  "n",
  "gl",
  '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
  opts
)
