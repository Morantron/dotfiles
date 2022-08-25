vim.cmd [[

let g:clipboard = {
      \   'name': 'yussh',
      \   'copy': {
      \      '+': ['yussh-copy'],
      \      '*': ['yussh-copy'],
      \    },
      \   'paste': {
      \      '+': ['xclip', '-o'],
      \      '*': ['xclip', '-o'],
      \    },
      \   'cache_enabled': 1,
      \ }
]]
