" init vundle
  set rtp+=~/.vim/bundle/Vundle.vim
  "set rtp+=~/.fzf
  filetype off                  " required by vundle

" Plugins
  call vundle#begin()
  Bundle 'Soares/butane.vim'
  Bundle 'kien/ctrlp.vim'
  "Bundle 'Morantron/morankai'
  Bundle 'mattn/emmet-vim'
  Bundle 'Morantron/vim-hybrid'
  Bundle 'sjl/gundo.vim'
  Bundle 'croaker/mustang-vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/nerdtree'
  Bundle 'mtth/scratch.vim'
  Bundle 'scrooloose/syntastic'
  Bundle 'groenewege/vim-less'
  Bundle 'SirVer/ultisnips'
  Bundle 'honza/vim-snippets'
  Bundle 'Morantron/my-snippets'
  Bundle 'bling/vim-airline'
  "Bundle 'jeetsukumaran/vim-buffergator'
  Bundle 'tpope/vim-dispatch'
  "Bundle 'monokrome/vim-testdrive'
  Bundle 'tpope/vim-fugitive'
  Bundle 'tpope/vim-vinegar'
  Bundle 'nathanaelkane/vim-indent-guides'
  Bundle 'digitaltoad/vim-jade'
  Bundle 'pangloss/vim-javascript.git'
  Bundle 'rodjek/vim-puppet'
  Bundle 'itspriddle/vim-jekyll'
  Bundle 'tpope/vim-rails'
  Bundle 'thoughtbot/vim-rspec'
  Bundle 'tpope/vim-repeat'
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-abolish'
  Bundle 'szw/vim-tags'
  Bundle 'christoomey/vim-tmux-navigator.git'
  Bundle 'milkypostman/vim-togglelist'
  Bundle 'bronson/vim-trailing-whitespace'
  Bundle 'vim-scripts/C64.vim'
  Bundle 'benmills/vimux'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'NLKNguyen/papercolor-theme'
  Bundle 'vim-scripts/IndentAnything'
  Bundle 'kien/rainbow_parentheses.vim'
  Bundle 'guns/vim-clojure-highlight'
  Bundle 'diepm/vim-rest-console'
  "Bundle 'suan/vim-instant-markdown'

 "only installing this for cacaview nerdy stuff
  Bundle 'vim-scripts/AnsiEsc.vim'


  if has("nvim")
    Bundle 'neovim/node-host'
    "Bundle 'snoe/nvim-parinfer.js'
  end

  call vundle#end()            " required

 " General settings
  set nocompatible              " be iMproved, required
  set ai
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set number
  set laststatus=2
  set encoding=utf-8
  set mouse=a
  syntax on
  filetype plugin indent on
  "set cindent
  "set smartindent
  "set autoindent
  set expandtab
  set undofile
  set undodir=~/.vim/undo
  set undoreload=1000
  set backupdir=~/.vimtmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set directory=~/.vimtmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set t_Co=256
  set hidden
  set history=1000
  runtime macros/matchit.vim
  set wildmenu
  set wildmode=list:longest
  set wildignore+=.git
  set ignorecase
  set smartcase
  set scrolloff=3
  set ruler
  set shortmess=atI
  set hlsearch
  set incsearch
  set autoread
  set ttyfast
  set shell=/bin/bash

  if !has("nvim")
    set term=screen-256color
  endif

  set backupcopy=yes
  set omnifunc=syntaxcomplete#Complete

" Colors
  set background=dark
  colors hybrid
  "colors C64

" General mappings
  let mapleader=","

  cmap w!! w !sudo tee > /dev/null %

  " toggle search highlight
  nnoremap <leader>hl :set hlsearch!<CR>

  " toggle quickfix
  nnoremap <leader>qf :call ToggleQuickfixList()<CR>

  " change conf
  nnoremap <leader>rc :e ~/.vimrc<CR>

  " Buffer change
  nnoremap <C-n> :bnext<CR>
  nnoremap <C-p> :bprev<CR>

  " Window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  if has('nvim')
    " XXX: workaround for libtermkeys problem in tmux
    if exists('$TMUX')
      nmap <BS> <C-h>
    end

    " Terminal navigation
    tnoremap <Esc> <C-\><C-n>

    nnoremap <C-h> :echo "wat H"
    nnoremap <C-j> :echo "wat J"
    nnoremap <C-k> :echo "wat K"
    nnoremap <C-l> :echo "wat L"

    "tnoremap <C-h> <C-\><C-n><C-w><C-h>
    "tnoremap <C-j> <C-\><C-n><C-w><C-j>
    "tnoremap <C-k> <C-\><C-n><C-w><C-k>
    "tnoremap <C-l> <C-\><C-n><C-w><C-l>

    tnoremap <C-f><C-l> <C-l>
    au WinEnter term://* startinsert

    " enable clipboard
    set clipboard+=unnamedplus
  endif

  " Airline
  let g:airline#extensions#tabline#enabled = 1

  " ctags
  nnoremap <leader>ct :!ctags -R *<CR>

  " run current buffer in vimscript
  nnoremap <leader>w :w \| :source % <cr>

  " case sensitive search
  nnoremap ,/ :/\C

  " cd to current buffer directory
  nnoremap <leader>cd :cd %:p:h<cr>

" NERDTree conf & mappings
  nnoremap <C-@> :NERDTreeToggle<CR>
  nnoremap <leader><leader>f :NERDTreeFind<CR>
  let g:NERDTreeHijackNetrw=1

" CtrlP conf & mappings
  "nnoremap <space> :FZF<CR>

  nnoremap <space> :CtrlPMixed<CR>
  let g:ctrlp_map = '<c-t>'
  let g:ctrlp_mruf_relative = 1
  let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
  \ 'PrtHistory(-1)':       ['<c-j>'],
  \ 'PrtHistory(1)':        ['<c-k>'],
  \ }
  let g:ctrlp_user_command = {
  \ 'types': {
  \   1: ['.git', 'cd %s && git ls-files'],
  \   2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \   'fallback': 'find %s -type f'
  \ }

" Tmux stuff
  let g:VimuxUseNearest = 1

  function! SendToNearestPane(type, ...)
    let reg_save = @@

    "if exists("g:VimuxRunnerIndex") "use this to open vimux runner
    "inteligently

    if a:0  " Invoked from Visual mode, use gv command.
      silent exe "normal! gvy"
    elseif a:type == 'line'
      silent exe "normal! '[V']y"
    else
      silent exe "normal! :%y"
    endif

    call VimuxSendText(@@)

    let @@ = reg_save
  endfunction

  nnoremap \\ :<C-U>call SendToNearestPane(1)<CR>
  vmap \\ :<C-U>call SendToNearestPane(visualmode(), 1)<CR>

" Fugitive conf & mappings
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>12 :diffget<CR>
  nnoremap <leader>21 :diffput<CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gg :Ggr -i 
  :command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

  "git grep word under cursor
  nnoremap \g :Ggr <C-R><C-W><CR>

" Syntastic conf
  let g:syntastic_error_symbol = '●'
  let g:syntastic_javascript_checkers = ['eslint']
  let g:syntastic_ruby_checkers = ['rubocop']
  let g:syntastic_always_populate_loc_list = 1
  nnoremap ]e :lnext<cr>
  nnoremap [e :lprev<cr>

" UltiSnips conf
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-J>"
  let g:UltiSnipsJumpBackwardTrigger="<c-K>"
  "let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippets/UltiSnips", "~/.vim/bundle/my-snippets/UltiSnips"]

" Rainbow parenthesis
  nnoremap <leader>rp :RainbowParenthesesToggle<cr>
  let g:rainbow_active = 1
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

" Redbooth stuff ( TODO move to plugin )
  nnoremap \d :call PseudoGotoDef()<cr>

  function! PseudoGotoDef()
    let line=getline('.')

    if match(line, 'Teambox') > 0
      call GotoModule()
    elseif match(line, 'template: ') > 0
      call GotoTemplate()
    else
      echo 'wat'
    endif
  endfunction

  function! GotoModule()
    let ctrl_p_shortcut = ' '
    let line=getline('.')
    "capture module name
    let module=substitute(line, '\(.*\)\(Teambox[A-Za-z._]\+\)\(.*\)', '\=submatch(2)', 'g')
    "decamelize
    let module=substitute(module, '\C\([a-z]\)\([A-Z]\)', '\=submatch(1)."-".submatch(2)', 'gI')
    let module=tolower(module)
    let module=substitute(module, 'teambox.', '', 'g')
    let module=substitute(module, '\.', '/', 'g')
    let file='app/javascripts/' . module . '.js'
    let fuzzy=substitute(file, '[/.-]', '', 'g')
    if filereadable(file)
      execute 'find '. file
    else
      call feedkeys(ctrl_p_shortcut . fuzzy)
    endif
  endfunction

  function! GotoTemplate()
    let ctrl_p_shortcut = ' '
    let line=getline('.')
    "capture template name
    let template=substitute(line, '\(.*\)template: ''\([^'']*\)''', '\=submatch(2)', 'g')
    let template=substitute(template, '\.', '/', 'g')
    let file = 'app/templates/' . template . '.jade'
    let fuzzy=substitute(file, '[/.-]', '', 'g')
    if filereadable(file)
      execute 'find '. file
    else
      call feedkeys(ctrl_p_shortcut . fuzzy)
    endif
  endfunction

" Rainbow
  nnoremap <leader>rp :RainbowParenthesesToggle<CR>

" Rest console
  let g:vrc_trigger = '<C-s>'
  let s:vrc_auto_format_response_patterns = {
  \   '*': 'jq "."',
  \}
  autocmd BufWritePost *.rest call VrcQuery()

" Rspec conf
  let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
  map \f :call RunCurrentSpecFile()<CR>
  map \s :call RunNearestSpec()<CR>
  let g:NERDCustomDelimiters = {
      \ 'rest': { 'left': '#' },
  \ }

" Ruby stuff
  au BufRead,BufNewFile *.rabl setf ruby

" Markdown preview
  let g:instant_markdown_slow = 1
  autocmd BufWritePost *.md silent exec "!cat % | curl -s -XPUT -T - http://localhost:8090"


" Macros stuff
  " split by commas
  let @s= ":s/, /\\r&/g"
  " die hash rockets
  let @h= ":s/:\\(\\w\\+\\) =>/\\1:/g"

" Custom functions
  function! RelPath(toFile)
    execute ":r!python -c \"import os.path; print os.path.relpath('" . a:toFile . "', '%')\""
  endfunction

" Fat fingers
  iabbrev ocurrence occurrence
  iabbrev heigth height
  iabbrev widht width
