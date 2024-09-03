return {
  {
    'tpope/vim-sensible',
    lazy = false,
    config = function()
      -- Slightly sensibler defaults

      -- 2 spaces soft tabs, this is the hill I'll die on
      vim.opt.tabstop = 2
      vim.opt.shiftwidth = 2
      vim.opt.expandtab = true

      -- show line numbers
      vim.opt.number = true

      -- enter insert mode at the proper indent level
      vim.cmd "filetype plugin indent on"

      -- allow to change buffers with unsaved changes
      vim.opt.hidden = true


      -- prevent signcolumn from jumping all the time
      vim.opt.signcolumn = "yes"

      -- enables autochdir when entering insert mode
      -- (relative path completion in insert mode)
      --vim cmd [[autocmd InsertEnter * let save_cwd = getcwd() | set autochdir]]
      --vim.cmd [[autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)]]

      vim.opt.termguicolors = false
    end
  }
}
