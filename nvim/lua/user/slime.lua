vim.cmd [[
  let g:slime_target = "tmux"
  let g:slime_dont_ask_default = 1
  let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}
]]
