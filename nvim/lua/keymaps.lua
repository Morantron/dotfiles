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
keymap("n", "<leader>gr", "<cmd>Telescope resume<cr>", opts)
keymap("n", "\\g", "<cmd>Telescope grep_string<cr>", opts)

keymap("n", "<leader>gd", "<cmd>Gvdiff<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Git<cr>", opts)

vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format()' ]]
keymap("n", "<leader>cf", ":Format<cr>", opts)

keymap("n", "<leader>co", ':lua vim.lsp.buf.execute_command({command = "_typescript.organizeImports", arguments = {vim.fn.expand("%:p")}})<CR>', opts)
keymap("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "cd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<leader>cR", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

keymap("n", "<leader>hl", ":set hlsearch!<CR>", opts)

keymap(
  "n",
  "gl",
  '<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<CR>',
  opts
)
