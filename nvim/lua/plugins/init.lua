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

return {
  {
    'dracula/vim',
    lazy = false,
    config = function()
      vim.cmd [[
      let g:dracula_colorterm = 0
      colors dracula
      ]]
    end,
  },
  {
    'tpope/vim-vinegar'
  },

  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },
  { 'tpope/vim-vinegar' },
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  },
  { 'tpope/vim-repeat' },
  { 'tpope/vim-abolish' },
  { 'tpope/vim-surround' },
  { 'tpope/vim-unimpaired' },
  { 'tpope/vim-rails' },
  { 'tpope/vim-dispatch' },

  -- basic lua stuff i think
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },

  { "vim-crystal/vim-crystal" },
  { 'morantron/nerdcommenter' },
}