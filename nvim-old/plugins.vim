call plug#begin('~/.vim/plugged')

  " Hail to the pope
  "
  " ,,,,,,,,,,,,,,,,,,,,,,,,,*,,**/(%@@@@@@@@@@@%*******************/**/////////////
  " ,,,,,,,,,,,,,,,,,,,,,,,,**/%&@@@@@@@@@@@@@@@@@@@@%****************//////////////
  " ,,,,,,,,,,,,,,,,,,,,,,,**/&%@&&@@&&@@@@@@@@@@@@@@@@@#***************////////////
  " ,,,,,,,,,,,,,,,,,,,,,,*/%&###(//(((#%%&%%&%%&&&&@@@@@@@****************/////////
  " ,,,,,,..,.,,.....,,,,(&%/*//*///////(((((#(####%#&&@@@@@@****************///////
  " ...................,@%**,,,,,,*****////((((((((((#&@@@@@@@#***************//////
  " .................,.&*,,,,,,,,,,,******////((((((((%&@@@@@@@%****************////
  " ................*%&*,,,,,,,,,,,,,,*******//////(((#&@@@@@@@@%****************///
  " ...............*/#*,,,,,,,..,,,,,,*********/*////(%%&@@@@@@@@#*****************/
  " ..............,,#(,,,,,,,,,,,,,,***************//(%&%@@@@@@@@@%*****************
  " ...............,/(*,.....,,,,,,,,,,******//***///(%%@@@@@@@@@@@(****************
  " ................./****/*,.....,,,,,,*******///(/((&&&@@@@@@@@@@@(***************
  " .................***//(#**,,,**/((((//*((#((//(/((%&&@@@@@@@@@@@%(**************
  " .................*/*.*%(/*,,,*//(/(, .@&##%#(/////#&@@%##&@@@@@@&(,*************
  " ................,******,,,,**///////////(((//*////%@@%%#/&@&@@@@@/*,************
  " ................**,,*,,,***//((///*************//#&@@/&@@@&@@@@@@#**,***********
  " ...............,,....,,,...,*/((((************//(@@@%%&@@@@@@@@@@#*,,,**********
  " ...............*,,,**,,**/(#&&#(%(/*,,******///(&@@@(((%@@@@@@@@@(,*,,,,,*******
  " .............../*,,/*,**,*,,//((/*******//(//((#@@@@%#%&@@@@@@@@&**,,,,,********
  " ...............,**,/**//(((((#(//(##/***/((//(#&@@@@@@@@@@@@@@@@(*,,,,,,,*******
  " ...............,/****,,******/////***,,/((/(((%@@@@@@@@@@@@@@@@@/*,,,,,,,*******
  " ...............(///***,********//(((///(((((%&@@&&@@@@@@@@@@@@@&*,,,,,,,,,,*****
  " ...............(*&#/**,,*,,**/((((((((####%&@@&/(@@@@@@@@@@@@@@#,,,,,,,,,,,*****
  " ..............(*@%@&%////(*//((##%%&&&&&&&&#(///&@@@@@@@@@&@@@%/*,,,,,,,,,,*****
  " .............,&#&@@##&@&%%&@@@@@@@@&&&&%(((/*//#@@@@@@@@@@@@@&*/*,,,,,,,,,,*****
  " ...........,(,#&&@(@@@@&,***/#%&%%#((((////**/(&@@@@@@@@@@@@&(,*,,,,,,,,,,,*****
  " ..........**,#&@%/@@@@@&,,,,,,*****,,,,,,*,,*/%&@@@@@@@@@@@@@&*,,,,,,,,,,,*,****
  " ........,,**&&%(,(@@@@@/,,,....,..,,,,,,.,,**(@@@@@@@@@@@@@@@@@@@@%/**,,,*******
  " .....,.,*,/&*/,%/&@@@%@&,..........,....,.(@@@@@@@@@@@@@@@@@@@@@@@@@@&@&,,******
  " ....,.,*,*&/**,(@@@@@@@&..............(@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@&&&@@&/***
  " ....,,***%/,,*&@@@@@@@@@@&/,...*(&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&&&&@&@@@@@(
  " ....,,,*,&&&@@@@@@@@@&@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&@@@@@@@@@@@@@@@

  Plug 'tpope/vim-sensible'

  " snippets and completion
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' | Plug 'Morantron/my-snippets'
  Plug 'mattn/emmet-vim'

  " file and buffer navigation
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-vinegar'
  Plug 'jeetsukumaran/vim-buffergator'

  " language/frameworks plugins
  "Plug 'sheerun/vim-polyglot' " syntax highlight all the things
  Plug 'tpope/vim-rails'
  "Plug 'plasticboy/vim-markdown'

  " i18n plugins
  Plug 'VincentCordobes/vim-translate'
  Plug 'lmeijvogel/vim-yaml-helper'
  Plug 'mogelbrod/vim-jsonpath'

  " edition
  "Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'AndrewRadev/sideways.vim'
  Plug 'AndrewRadev/switch.vim'
  Plug 'AndrewRadev/splitjoin.vim'
  "Plug 'AndrewRadev/tagalong.vim' " not working?
  Plug '907th/vim-auto-save'

  " crazy edition
  Plug 'vim-scripts/DrawIt'
  "Plug 'dhruvasagar/vim-table-mode'

  " git
  Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb' | Plug 'shumphrey/fugitive-gitlab.vim'
  Plug 'vim-scripts/ConflictMotions' |
        \ Plug 'vim-scripts/CountJump' |
        \ Plug 'vim-scripts/ingo-library' |
        \ Plug 'tpope/vim-repeat' |
        \ Plug 'vim-scripts/visualrepeat'
  Plug 'airblade/vim-gitgutter'

  " swag
  "Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'junegunn/vim-emoji'
  "Plug 'ap/vim-css-color'
  Plug 'chrisbra/Colorizer'
  "Plug 'mhinz/vim-startify'

  " search
  Plug 'romainl/vim-qf'
  Plug 'mhinz/vim-grepper'

  " linting and friends
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'glepnir/lspsaga.nvim'
  "Plug 'w0rp/ale'

  " zen mode
  Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'

  " tmux
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'jpalardy/vim-slime'

  " testing
  Plug 'janko-m/vim-test'
  Plug 'tpope/vim-dispatch'
  "Plug 'neomake/neomake'

  " trying out area, remove/categorize from time to time
  Plug 'tidalcycles/vim-tidal'

call plug#end()
