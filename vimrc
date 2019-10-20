" Plugins {{{
  call plug#begin('~/.vim/plugged')

  " Defaults
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
  Plug 'sheerun/vim-polyglot' " syntax highlight all the things
  Plug 'tpope/vim-rails'
  Plug 'lmeijvogel/vim-yaml-helper'

  " edition
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'AndrewRadev/sideways.vim'
  Plug 'AndrewRadev/switch.vim'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'AndrewRadev/tagalong.vim'

  " crazy edition
  Plug 'vim-scripts/DrawIt'
  "Plug 'dhruvasagar/vim-table-mode'

  " git
  Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'
  Plug 'vim-scripts/ConflictMotions' |
      \ Plug 'vim-scripts/CountJump' |
      \ Plug 'vim-scripts/ingo-library' |
      \ Plug 'tpope/vim-repeat' |
      \ Plug 'vim-scripts/visualrepeat'
  Plug 'airblade/vim-gitgutter'

  " swag
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'dracula/vim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'junegunn/vim-emoji'
  Plug 'ap/vim-css-color'

  " inbox ( trying plugins here, categorize them or remove them )
  "Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

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
  Plug 'w0rp/ale'

  " zen mode
  Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'

  " tmux
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'jpalardy/vim-slime'

  " testing
  Plug 'janko-m/vim-test'
  Plug 'tpope/vim-dispatch'
  "Plug 'neomake/neomake'

  " misc
  Plug 'embear/vim-localvimrc'

  " trying out area, remove/categorize from time to time

  call plug#end()
" }}}

  "enables autochdir when entering insert mode ( relative path completion )
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
" }}}

" Colors {{{
  set background=dark
  colors PaperColor
" }}}

" General mappings {{{
  let mapleader="\<Space>"

  cmap w!! w !sudo tee > /dev/null %

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
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'minimalist'

  " cd to current buffer directory
  nnoremap <leader>cd :cd %:p:h<cr>

" NERDTree conf & mappings
  nnoremap <leader>f :NERDTreeFind<CR>
  let g:NERDTreeHijackNetrw=1

  nnoremap <space><space> :FZF<CR>

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

" UltiSnips conf
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-J>"
  let g:UltiSnipsJumpBackwardTrigger="<c-K>"

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
    set noshowmode
    set noshowcmd
    "set scrolloff=999
    "Limelight
  endfunction

  function! s:goyo_leave()
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
    set showmode
    set showcmd
    "set scrolloff=5
    "Limelight!
  endfunction

  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()

" localvimrc
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0
let g:localvimrc_whitelist = [
      \ '/home/morantron/hacking/camaloon/paper/.lvimrc',
      \ '/home/morantron/hacking/redbooth/redbooth-backend/.lvimrc',
      \ '/home/morantron/hacking/camaloon/shared/template-edit/.lvimrc',
      \ '/home/morantron/hacking/tmux-fingers-web/.lvimrc',
      \]

" ale
let g:ale_emit_conflict_warnings = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\}

nmap <leader>f  <plug>(ale_fix)
xmap <leader>f  <plug>(ale_fix)
vmap <leader>f  <plug>(ale_fix)

" Ruby stuff
  au BufRead,BufNewFile *.rabl setf ruby

" Markdown
  let g:instant_markdown_slow = 1
  let g:vim_markdown_new_list_item_indent = 2
  let g:vim_markdown_no_default_key_mappings = 1
  autocmd BufWritePost *.md silent exec "!cat % | curl -s -XPUT -T - http://localhost:8090"

" Emmet conf
let g:user_emmet_install_global = 1
let g:user_emmet_settings = {
\  'eruby': {
\       'extends': 'ruby',
\  },
\  'html': {
\       'extends' : 'html',
\   },
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'jsx',
\  },
\}

" Slime conf
let g:slime_target = "tmux"
let g:slime_dont_ask_default = 1
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}

autocmd FileType html,css,javascript.jsx EmmetInstall

" yaml helper mappings
nnoremap <leader>yg :YamlGoToKey 
nnoremap <leader>yy :YamlGetFullPath<CR>
nnoremap <leader>yP :YamlGoToParent<CR>
autocmd FileType javascript.jsx nnoremap <leader>yp i{I18n.t('pa')}
autocmd FileType eruby nnoremap <leader>yp i<%= t('pa') %>
autocmd FileType haml nnoremap <leader>yp it('pa')

" Lang server

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'ruby': ['tcp://localhost:7658'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Vim Test
function! GrasshopperTransform(cmd) abort
  return 'hop ' . a:cmd
endfunction

let g:test#custom_transformations = {'grasshopper': function('GrasshopperTransform')}
let g:test#transformation = 'grasshopper'

let test#strategy = 'dispatch'

let g:dispatch_compilers = { 'hop': ''}

nnoremap <leader>tt :TestNearest<CR>

" vim-emoji conf
"   NOTE: for autocomplete do <C-X><C-U>
set completefunc=emoji#complete
nnoremap <leader>em :s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>

