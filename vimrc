" Plugins {{{
  call plug#begin('~/.vim/plugged')
  Plug 'Soares/butane.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/emmet-vim'
  Plug 'Morantron/vim-hybrid'
  Plug 'croaker/mustang-vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'mtth/scratch.vim'
  Plug 'benekastah/neomake'
  Plug 'groenewege/vim-less'
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' | Plug 'Morantron/my-snippets'
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-vinegar'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'digitaltoad/vim-jade'
  Plug 'pangloss/vim-javascript'
  Plug 'rodjek/vim-puppet'
  Plug 'itspriddle/vim-jekyll'
  Plug 'tpope/vim-rails'
  Plug 'thoughtbot/vim-rspec'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-surround'
  Plug 'szw/vim-tags'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'milkypostman/vim-togglelist'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'vim-scripts/C64.vim'
  Plug 'benmills/vimux'
  Plug 'kchmck/vim-coffee-script'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'vim-scripts/IndentAnything'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'guns/vim-clojure-highlight'
  Plug 'diepm/vim-rest-console'
  Plug 'jakobwesthoff/argumentrewrap'
  Plug 'teoljungberg/vim-grep'
  Plug 'lokson/ZoomWin'
  Plug 'vim-scripts/DrawIt'
  Plug 'itchyny/calendar.vim'

 "only installing this for cacaview nerdy stuff
  Plug 'vim-scripts/AnsiEsc.vim'

  call plug#end()
" }}}

" General settings {{{
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
  set modelines=1 " check last line for additional vim settings ( fold stuff in vimrc )

  if !has("nvim")
    set term=screen-256color
  endif

  set backupcopy=yes
  set omnifunc=syntaxcomplete#Complete
" }}}

" Colors {{{
  set background=dark
  "colors hybrid
  "colors C64
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

  " toggle quickfix
  nnoremap <leader>qf :call ToggleQuickfixList()<CR>

  " change conf
  nnoremap <leader>rc :e ~/hacking/dotfiles/vimrc<CR>

  " split by comma
  vnoremap SS :s/,/,\r/g<CR>gv=

" }}}

" poor man's orgmode {{{
  function! AddTodo()
    let todo_path = expand("%") . ":" . line(".")
    e ~/.notes/TODO.md
    call append(line('$'), "[ ] " . todo_path)
    normal G$
  endfunction

  nnoremap <leader>te :e ~/.notes/TODO.md<cr>
  nnoremap <leader>ta :call AddTodo()<cr>
  nnoremap <leader>tm :normal 0lrx<cr>
" }}}

  " Buffer change
  nnoremap <C-n> :bnext<CR>
  nnoremap <C-p> :bprev<CR>

  " Quickfix/location list navigation
  nnoremap ]e :lnext<cr>
  nnoremap [e :lprev<cr>
  nnoremap ]q :cnext<cr>
  nnoremap [q :cprev<cr>

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

    tnoremap <C-f><C-l> <C-l>

    " enable clipboard
    set clipboard+=unnamedplus
  endif

  " Airline
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1

  " ctags
  nnoremap <leader>ct :!ctags -R *<CR>

  " cd to current buffer directory
  nnoremap <leader>cd :cd %:p:h<cr>

" NERDTree conf & mappings
  nnoremap <C-@> :NERDTreeToggle<CR>
  nnoremap <leader>f :NERDTreeFind<CR>
  let g:NERDTreeHijackNetrw=1


" FZF conf
  nnoremap <space><space> :FZF<CR>

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

" vim-grep
  nnoremap <leader>gg :Grep -i 
  nnoremap <leader>GG :Grep 
  nnoremap <leader>gG :Grep 
  nnoremap <leader>Gg :Grep 
  nnoremap \g :Grep <C-R><C-W><CR>

" Neomake conf
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_ruby_enabled_makers = ['rubocop']

  let g:neomake_logfile = "/home/jorge/.neomake.log"
  autocmd BufWritePost * Neomake


" UltiSnips conf
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-J>"
  let g:UltiSnipsJumpBackwardTrigger="<c-K>"
  "let g:UltiSnipsSnippetDirectories=["~/.config/nvim/UltiSnips"]

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

" Rainbow parenthesis
  nnoremap <leader>rp :RainbowParenthesesToggle<cr>
  let g:rainbow_active = 1
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

" Rest console
  let g:vrc_trigger = '<C-s>'
  let s:vrc_auto_format_response_patterns = {
  \   '*': 'jq "."',
  \}
  autocmd BufWritePost *.rest call VrcQuery()

  let g:NERDCustomDelimiters = {
  \ 'rest': { 'left': '#' },
  \ }

" Rspec conf
  let g:rspec_command = "Dispatch bundle exec rspec {spec}"
  map ,rsf :call RunCurrentSpecFile()<CR>
  map ,rss :call RunNearestSpec()<CR>
" Ruby stuff
  au BufRead,BufNewFile *.rabl setf ruby

" Markdown
  let g:instant_markdown_slow = 1
  autocmd BufWritePost *.md silent exec "!cat % | curl -s -XPUT -T - http://localhost:8090"

" Argument rewrap
  nnoremap <silent> <leader>s :call argumentrewrap#RewrapArguments()<CR>

" Macros stuff
  " split by commas
  let @s= ":s/, /\\r&/g"
  " die hash rockets
  let @h= ":s/:\\(\\w\\+\\) =>/\\1:/g"
  " go to file under cursor in existing vertical split
  let @f= "ovgF"

" Custom functions
  function! RelPath(toFile)
    execute ":r!python -c \"import os.path; print os.path.relpath('" . a:toFile . "', '%')\""
  endfunction
" vim:foldmethod=marker:foldlevel=0
