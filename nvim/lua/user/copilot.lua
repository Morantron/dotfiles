vim.g.copilot_node_command = "~/.nvm/versions/node/v16.19.1/bin/node"
vim.g.copilot_assume_mapped = true

--vim.g.copilot_no_tab_map = true
--vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.cmd([[highlight CopilotSuggestion guifg=#555555 ctermfg=8]])
