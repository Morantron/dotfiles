" Plugins {{{
  call plug#begin('~/.vim/plugged')

  "let g:ale_disable_lsp = 1

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

  " slightly sensibler defaults
  "   2 spaces tabs
  set tabstop=2
  set shiftwidth=2
  set expandtab

  "   show line numbers
  set number

  "   entering insert mode at proper indent level
  filetype plugin indent on

  "   allow to change buffers with unsaved changes
  set hidden

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
" }}}

  "enables autochdir when entering insert mode ( relative path completion )
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
" }}}

" Colors {{{
  "set background=dark
  let g:dracula_colorterm = 0
  "let g:dracula_italic = 0
  colors dracula
" }}}

" General mappings {{{
  let mapleader="\<Space>"

  " Visual mappings
  vnoremap . :norm .<CR>
  vnoremap @@ :norm @q<CR>
  vnoremap <leader>js :!jq "."<CR>

  " Select pasted text
  "    http://vim.wikia.com/wiki/Selecting_your_pasted_text
  nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

  " toggle search highlight
  nnoremap <leader>hl :set hlsearch!<CR>

  " change conf
  nnoremap <leader>rc :e ~/hacking/dotfiles/vimrc<CR>

" }}}

  " Window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Airline
  "let g:airline#extensions#tabline#enabled = 1
  "let g:airline_powerline_fonts = 1
  "let g:airline_theme = 'minimalist'

  " cd to current buffer directory
  nnoremap <leader>cd :cd %:p:h<cr>

" NERDTree conf & mappings
  nnoremap <leader>f :NERDTreeFind<CR>
  let g:NERDTreeHijackNetrw=1

  nnoremap <space><space> :GFiles<CR>

" Buffer management
  let g:buffergator_viewport_split_policy = "B"
  nnoremap <leader>b :Buffers<CR>
  nnoremap <leader>B :BuffergatorOpen<CR>

" Fugitive conf & mappings
  nnoremap <leader>gd :Gvdiff<CR>
  nnoremap <leader>12 :diffget<CR>
  nnoremap <leader>21 :diffput<CR>

  nnoremap <leader>gs :Gstatus<CR>

" vim-grepper
  let g:grepper = {}
  let g:grepper.tools = ['git', 'grep']
  let g:grepper.git = {
  \  'grepprg': 'git grep -ni'
  \ }
  let g:grepper.open = 1

  nmap gs  <plug>(GrepperOperator)
  xmap gs  <plug>(GrepperOperator)
  nnoremap <leader>gg :Grepper<CR>
  nnoremap \g :Grepper -cword -noprompt<cr>

" vim-qf
  nnoremap <leader>qf :call ToggleQuickfixList()<CR>
  " Causes issues with resizing (https://github.com/vim/vim/issues/931).
  let g:qf_loclist_window_bottom = 0
  let g:qf_window_bottom = 0

" coc
  "inoremap <silent><expr> <c-space> coc#refresh()
  "nmap <leader>cca  <Plug>(coc-codeaction)
  "nmap <leader>ca  <Plug>(coc-codeaction-selected)
  "xmap <leader>ca  <Plug>(coc-codeaction-selected)
  "nmap <leader>cf  <Plug>(coc-fix-current)
  "nmap <leader>cgd  <Plug>(coc-definition)
  "nmap <leader>crn  <Plug>(coc-rename)

  "set statusline+=%{coc#status()}

" UltiSnips conf
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-J>"
  let g:UltiSnipsJumpBackwardTrigger="<c-K>"
  " add my-snippets to typescript too
  autocmd FileType javascriptreact,typescript,typescriptreact UltiSnipsAddFiletypes javascript
" Rainbow parenthesis
  nnoremap <leader>rp :RainbowParenthesesToggle<cr>
  let g:rainbow_active = 1
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

  let g:NERDCustomDelimiters = {
  \ 'rest': { 'left': '#' },
  \ }

" Goyo ( zen mode )
  nnoremap <leader>z :Goyo<cr>
  function! s:goyo_enter()
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    "silent !change-gnome-terminal-profile 3
    set noshowmode
    set noshowcmd
    colors PaperColor
    set bg=light

    " Disable showing ~ on blank lines
    hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
    "set scrolloff=999
    "Limelight
  endfunction

  function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    "silent !change-gnome-terminal-profile 2
    set showmode
    set showcmd
    colors dracula
    "set scrolloff=5
    "Limelight!
  endfunction

  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()


  let g:goyo_width = 100
  let g:goyo_height = "90%"

" ale
let g:ale_emit_conflict_warnings = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'md': ['proselint'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'typescriptreact': ['eslint', 'prettier'],
\   'ruby': ['rubocop'],
\   'python': ['black'],
\}


let g:ale_ruby_rubocop_executable = 'bundle'

" Disable by default, enable per project using direnv. Otherwise all projects
" I contribute to will be mangled lol
let g:ale_fix_on_save = 0


" Ruby stuff
  au BufRead,BufNewFile *.rabl setf ruby

" Markdown
  let g:instant_markdown_slow = 1
  let g:vim_markdown_new_list_item_indent = 2
  let g:vim_markdown_no_default_key_mappings = 1
  autocmd BufWritePost *.md silent exec "!cat % | curl -s -XPUT -T - http://localhost:8090"

" Emmet conf
"let g:user_emmet_install_global = 1
"let g:user_emmet_settings = {
"\  'eruby': {
"\       'extends': 'ruby',
"\  },
"\  'html': {
"\       'extends' : 'html',
"\   },
"\  'javascript.jsx' : {
"\      'extends' : 'jsx',
"\  },
"\  'typescript' : {
"\      'extends' : 'jsx',
"\  },
"\}

" Slime conf
" TODO this fails when ran outside TMUX
let g:slime_target = "tmux"
let g:slime_dont_ask_default = 1
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}

"function SlimeOverrideSend(config, text)
  "let current_x_window_id = system('xdotool getactivewindow')
  "call system("xdotool windowfocus " . b:slime_config["window_id"])
  "call system("sleep 0.1")
  "call system("xdotool type --delay 0 --window " . b:slime_config["window_id"] . " -- " . shellescape(a:text))
  "call system("xdotool windowfocus " . current_x_window_id)
"endfunction

autocmd FileType html,css,javascript.jsx EmmetInstall

" i18n helpers
"   sets mappings for yaml/json translation files using yaml-help and jsonpath
"   plugins

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
autocmd FileType javascript,javascript.jsx nnoremap <leader>yp i{I18n.t('pa')}
autocmd FileType eruby nnoremap <leader>yp i<%= t('pa') %>
autocmd FileType haml nnoremap <leader>yp it('pa')

" Lang server

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'ruby': ['tcp://localhost:7658'],
    \ }

"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Vim Test
function! GrasshopperTransform(cmd) abort
  return 'hop ' . a:cmd
endfunction


let g:test#custom_transformations = {'grasshopper': function('GrasshopperTransform')}
let g:test#transformation = 'grasshopper'

let test#strategy = 'dispatch'

"let g:dispatch_compilers = { 'hop': ''}

nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tl :TestLast<CR>

lua << EOF
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  --...
end

nvim_lsp.diagnosticls.setup {
  on_attach = on_attach
}

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach
}
EOF

lua <<EOF
local saga = require('lspsaga')
saga.init_lsp_saga()
EOF

" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

nnoremap <silent><leader>sd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

let g:auto_save = 0
" TODO persistent undo would be cool
autocmd BufRead,BufNewFile /home/morantron/.notes/**,/home/morantron/.repl/** let g:auto_save = 1

" shit introduced by having pyenv installed systemwide

let python_host_prog = "/usr/bin/python2"
let python3_host_prog = "/usr/bin/python3"

" vim-emoji conf
"   NOTE: for autocomplete do <C-X><C-U>
set completefunc=emoji#complete
nnoremap <leader>em :s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>

if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source ".path
  endfor
endif
