return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()

      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = "all",

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        highlight = {
          -- `false` will disable the whole extension
          enable = true,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },

        -- this repo seems to be gone from the internets https://github.com/nvim-treesitter/nvim-treesitter/issues/7941
        ignore_install = { "ipkg" },
      }
    end,
    build = ":TSUpdate"
  },
}
