local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    vim.notify("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --  │   " Hail to the pope
  --  │   "
  --  │   " ,,,,,,,,,,,,,,,,,,,,,,,,,*,,**/(%@@@@@@@@@@@%*******************/**/////////////
  --  │   " ,,,,,,,,,,,,,,,,,,,,,,,,**/%&@@@@@@@@@@@@@@@@@@@@%****************//////////////
  --  │   " ,,,,,,,,,,,,,,,,,,,,,,,**/&%@&&@@&&@@@@@@@@@@@@@@@@@#***************////////////
  --  │   " ,,,,,,,,,,,,,,,,,,,,,,*/%&###(//(((#%%&%%&%%&&&&@@@@@@@****************/////////
  --  │   " ,,,,,,..,.,,.....,,,,(&%/*//*///////(((((#(####%#&&@@@@@@****************///////
  --  │   " ...................,@%**,,,,,,*****////((((((((((#&@@@@@@@#***************//////
  --  │   " .................,.&*,,,,,,,,,,,******////((((((((%&@@@@@@@%****************////
  --  │   " ................*%&*,,,,,,,,,,,,,,*******//////(((#&@@@@@@@@%****************///
  --  │   " ...............*/#*,,,,,,,..,,,,,,*********/*////(%%&@@@@@@@@#*****************/
  --  │   " ..............,,#(,,,,,,,,,,,,,,***************//(%&%@@@@@@@@@%*****************
  --  │   " ...............,/(*,.....,,,,,,,,,,******//***///(%%@@@@@@@@@@@(****************
  --  │   " ................./****/*,.....,,,,,,*******///(/((&&&@@@@@@@@@@@(***************
  --  │   " .................***//(#**,,,**/((((//*((#((//(/((%&&@@@@@@@@@@@%(**************
  --  │   " .................*/*.*%(/*,,,*//(/(, .@&##%#(/////#&@@%##&@@@@@@&(,*************
  --  │   " ................,******,,,,**///////////(((//*////%@@%%#/&@&@@@@@/*,************
  --  │   " ................**,,*,,,***//((///*************//#&@@/&@@@&@@@@@@#**,***********
  --  │   " ...............,,....,,,...,*/((((************//(@@@%%&@@@@@@@@@@#*,,,**********
  --  │   " ...............*,,,**,,**/(#&&#(%(/*,,******///(&@@@(((%@@@@@@@@@(,*,,,,,*******
  --  │   " .............../*,,/*,**,*,,//((/*******//(//((#@@@@%#%&@@@@@@@@&**,,,,,********
  --  │   " ...............,**,/**//(((((#(//(##/***/((//(#&@@@@@@@@@@@@@@@@(*,,,,,,,*******
  --  │   " ...............,/****,,******/////***,,/((/(((%@@@@@@@@@@@@@@@@@/*,,,,,,,*******
  --  │   " ...............(///***,********//(((///(((((%&@@&&@@@@@@@@@@@@@&*,,,,,,,,,,*****
  --  │   " ...............(*&#/**,,*,,**/((((((((####%&@@&/(@@@@@@@@@@@@@@#,,,,,,,,,,,*****
  --  │   " ..............(*@%@&%////(*//((##%%&&&&&&&&#(///&@@@@@@@@@&@@@%/*,,,,,,,,,,*****
  --  │   " .............,&#&@@##&@&%%&@@@@@@@@&&&&%(((/*//#@@@@@@@@@@@@@&*/*,,,,,,,,,,*****
  --  │   " ...........,(,#&&@(@@@@&,***/#%&%%#((((////**/(&@@@@@@@@@@@@&(,*,,,,,,,,,,,*****
  --  │   " ..........**,#&@%/@@@@@&,,,,,,*****,,,,,,*,,*/%&@@@@@@@@@@@@@&*,,,,,,,,,,,*,****
  --  │   " ........,,**&&%(,(@@@@@/,,,....,..,,,,,,.,,**(@@@@@@@@@@@@@@@@@@@@%/**,,,*******
  --  │   " .....,.,*,/&*/,%/&@@@%@&,..........,....,.(@@@@@@@@@@@@@@@@@@@@@@@@@@&@&,,******
  --  │   " ....,.,*,*&/**,(@@@@@@@&..............(@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&&&@@&/***
  --  │   " ....,,***%/,,*&@@@@@@@@@@&/,...*(&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&@&@@@@@(
  --  │   " ....,,,*,&&&@@@@@@@@@&@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&@@@@@@@@@@@@@@@
  use { 'tpope/vim-sensible', config = function() require('user.sensibler') end }
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-vinegar'
  use 'tpope/vim-repeat'
  use 'tpope/vim-abolish'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-rails'
  use 'tpope/vim-dispatch'

  use { 'jpalardy/vim-slime', branch = "main", config = function () require('user.slime') end }

  --use 'christoomey/vim-tmux-navigator'

  use 'scrooloose/nerdtree'

  -- basic lua stuff i think
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  --- completion
  use { "hrsh7th/nvim-cmp", config = function() require('user.cmp') end }
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use 'dcampos/cmp-snippy'
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  use 'mattn/emmet-vim'

  -- snippets
  use 'dcampos/nvim-snippy'
  use 'honza/vim-snippets'

  -- LSP
  use { "williamboman/mason.nvim", run = ":MasonUpdate", config = function() require('user.mason') end }
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use 'jose-elias-alvarez/null-ls.nvim'

  use { "nvim-telescope/telescope.nvim", config = function() require('user.telescope') end }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    config = function() require('user.treesitter') end,
    run = ":TSUpdate",
  }

  use "vim-crystal/vim-crystal"

  -- Comment stuff
  use "morantron/nerdcommenter" -- Easily comment stuff
  --use "JoosepAlviste/nvim-ts-context-commentstring" TODO

  use { "lewis6991/gitsigns.nvim", config = function() require('gitsigns').setup() end }

  use {
    "github/copilot.vim",
    config = function () require('user.copilot') end,
  }

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  use 'sunjon/shade.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
      require("packer").sync()
  end
end)
