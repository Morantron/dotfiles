" Enables folding in config files
set foldmethod=marker

"{{{ Plugins
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

  " file, search and buffer navigation
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-vinegar'
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'mhinz/vim-grepper'
  "Plug 'nvim-telescope/telescope.nvim' | Plug 'nvim-lua/popup.nvim' | Plug 'nvim-lua/plenary.nvim'

  " language/frameworks plugins
  Plug 'sheerun/vim-polyglot' " syntax highlight all the things
  Plug 'tpope/vim-rails'
  "Plug 'plasticboy/vim-markdown'

  " i18n plugins
  Plug 'VincentCordobes/vim-translate'
  Plug 'lmeijvogel/vim-yaml-helper'
  Plug 'mogelbrod/vim-jsonpath'

  " edition
  Plug 'morantron/nerdcommenter' " using form to avoid <leader>ca conflict :facepalm:
  "Plug 'tpope/vim-commentary'
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


  " linting and friends
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neovim/nvim-lspconfig'
  "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
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

  Plug 'github/copilot.vim'

  " trying out area, remove/categorize from time to time
  Plug 'tidalcycles/vim-tidal'
call plug#end()
"}}}

"{{{ Slightly sensibler defaults (on top of tpope/vim-sensible)
" 2 spaces soft tabs, this is the hill I'll die on
set tabstop=2
set shiftwidth=2
set expandtab

" show line numbers
set number

" entering insert mode at proper indent level
filetype plugin indent on

" allow to change buffers with unsaved changes
set hidden

" enables autochdir when entering insert mode
" (relative path completion in insert mode)
autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
"}}}

"{{{ Colors
let g:dracula_colorterm = 0
colors dracula
"}}}

"{{{ General mappings

" Set leader to spacebar
  let mapleader="\<Space>"

" Visual mappings
vnoremap . :norm .<CR>
vnoremap @@ :norm @q<CR>
vnoremap <leader>js :!jq "."<CR>

" Select pasted text
"    http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Toggle search highlight
nnoremap <leader>hl :set hlsearch!<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Increment/decrement numbers with cursor keys
nnoremap <Up> <C-a>
nnoremap <Down> <C-x>

" cd to current buffer directory (removing because it conflicts with LSP
" goodies)
" nnoremap <leader>cd :cd %:p:h<cr>

" edit dotfiles
nnoremap <leader>rc :e ~/.config/nvim/init.vim<CR>
"}}}

" provider confi
"
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog  = '/usr/bin/python3'

" Per plugin config

"{{{ buffergator
let g:buffergator_viewport_split_policy = "B"
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>B :BuffergatorOpen<CR>
"}}}

"{{{Fugitive

nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>12 :diffget<CR>
nnoremap <leader>21 :diffput<CR>

nnoremap <leader>gs :Git<CR>
"}}}

"{{{Ultisnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-J>"
let g:UltiSnipsJumpBackwardTrigger="<c-K>"

" add my-snippets to typescript too
autocmd FileType javascriptreact,typescript,typescriptreact UltiSnipsAddFiletypes javascript

"}}}

"{{{ emmet
autocmd FileType html,css,javascript.jsx EmmetInstall
"}}}

"{{{ vim-slime
let g:slime_target = "tmux"
let g:slime_dont_ask_default = 1
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}
"}}}

"{{{ vim-yaml-helper + vim-jsonpath
"
" I use both these plugins to manage i18n files in yaml and JSON, grouping
" config here.
"
function! SetJSONI18nMappings()
  nnoremap <leader>yg :call jsonpath#goto()<CR>
  nnoremap <leader>yy :call jsonpath#echo()<CR>
"nnoremap <leader>jP goto parent not supported
endfunction

function! SetYAMLI18nMappings()
  nnoremap <leader>yg :YamlGoToKey
  nnoremap <leader>yy :YamlGetFullPath<CR>
  nnoremap <leader>yP :YamlGoToParent<CR>
endfunction

let g:jsonpath_register = '"'

autocmd FileType yaml call SetYAMLI18nMappings()
autocmd FileType json call SetJSONI18nMappings()
autocmd FileType javascript,javascript.jsx nnoremap <leader>yp i{t('pa')}
autocmd FileType eruby nnoremap <leader>yp i<%= t('pa') %>
autocmd FileType haml nnoremap <leader>yp it('pa')
"}}}

"{{{ vim-test
" hop runs commands inside container, in my damned convoluted setup
function! GrasshopperTransform(cmd) abort
  return 'hop ' . a:cmd
endfunction

let g:test#custom_transformations = {'grasshopper': function('GrasshopperTransform')}
let g:test#transformation = 'grasshopper'

nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>
"}}}

"{{{ lsp-config
lua <<EOF
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap("n", "<leader>cf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  buf_set_keymap('n', "<leader>cd", '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', "<leader>cD", '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
end

nvim_lsp.diagnosticls.setup {
  on_attach = on_attach,
  filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint',
        rootPatterns = { 'package.json' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning'
        }
      },
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint',
    },
    formatters = {
      prettier = {
        command = 'prettier',
        args = { '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      css = 'prettier',
      javascript = 'prettier',
      javascriptreact = 'prettier',
      json = 'prettier',
      scss = 'prettier',
      less = 'prettier',
      typescript = 'prettier',
      typescriptreact = 'prettier',
      json = 'prettier',
      markdown = 'prettier',
    }
  }
}

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)

    client.resolved_capabilities.document_formatting = false

  end
}
EOF
"}}}

"{{{ lspsaga
lua <<EOF
local saga = require('lspsaga')
saga.init_lsp_saga()
EOF

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> <leader>cR <Cmd>Lspsaga lsp_finder<CR>

nnoremap <silent><leader>csd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

" rename
"nnoremap <silent>cr <cmd>lua require('lspsaga.rename').rename()<CR>
"
nnoremap <silent><leader>cr :Lspsaga rename<CR>
" close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`
"}}}

"{{{coc.nvim
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"}}}

"{{{ telescope
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>gg :Grepper<CR>
nnoremap \g :Grepper -cword -noprompt<cr>

"}}}

"{{{ vim-commentary
nmap <leader>cc <Plug>CommentaryLine
vmap <leader>cc <Plug>Commentary
"}}}

" Use <Tab> and <S-Tab> to navigate through popup menu
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"let g:completion_confirm_key = ""
"imap <expr> <cr>  pumvisible() ? complete_info()["selected"] != "-1" ?
                 "\ "\<Plug>(completion_confirm_completion)"  : "\<c-e>\<CR>" :  "\<CR>"

"}}}


" Enable per project config (through direnv)
" {{{
if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source ".path
  endfor
endif
"}}}
