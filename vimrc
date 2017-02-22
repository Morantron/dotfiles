" Plugins {{{
  call plug#begin('~/.vim/plugged')
  Plug 'Soares/butane.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
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
  Plug 'tpope/vim-fireplace'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'digitaltoad/vim-jade'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'rodjek/vim-puppet'
  Plug 'itspriddle/vim-jekyll'
  Plug 'thoughtbot/vim-rspec'
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
  "Plug 'guns/vim-sexp'
  Plug 'diepm/vim-rest-console'
  Plug 'jakobwesthoff/argumentrewrap'
  Plug 'teoljungberg/vim-grep'
  Plug 'lokson/ZoomWin'
  Plug 'vim-scripts/DrawIt'
  Plug 'itchyny/calendar.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'Morantron/vim-markdown-todo'
  Plug 'tikhomirov/vim-glsl'
  "Plug '~/hacking/bufo.vim'

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
    set encoding=utf-8
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
  "colors elflord
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
  "nnoremap ]e :lnext<CR>
  "nnoremap [e :lprev<CR>
  "nnoremap ]q :cnext<CR>
  "nnoremap [q :cprev<CR>

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
  "let g:fzf_action = {
  "\ 'ctrl-d': 'bdelete',
  "\ }

  "function! s:buflisted()
    "return filter(range(1, bufnr('$')), 'buflisted(v:val)')
  "endfunction

  "function! s:bufopen()
    "return filter(range(1, bufnr('$')), 'buflisted(v:val)')
  "endfunction

  "function! CustomFZFBuffers(...)
    "let bufs = map(sort(s:buflisted(), 's:sort_buffers'), 's:format_buffer(v:val)')
    "return s:fzf('buffers', {
    "\ 'source':  reverse(bufs),
    "\ 'sink*':   s:function('s:bufopen'),
    "\ 'options': '+m -x --tiebreak=index --header-lines=1 --ansi -d "\t" -n 2,1..2 --prompt="Buf> "',
    "\}, a:000)
  "endfunction

  nnoremap <space><space> :FZF<CR>
  nnoremap <space>b :Buffers<CR>

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
  nnoremap <leader>gd :Gvdiff<CR>
  nnoremap <leader>12 :diffget<CR>
  nnoremap <leader>21 :diffput<CR>
  "for 3-way merge conflicts
  nnoremap <leader>34 :diffget //2<CR>
  nnoremap <leader>43 :diffget //3<CR>

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

" Vim jsx
let g:jsx_ext_required = 0

" Rspec conf
  let g:rspec_command = "Dispatch bundle exec rspec {spec}"
  map ,rsf :call RunCurrentSpecFile()<CR>
  map ,rss :call RunNearestSpec()<CR>
" Ruby stuff
  au BufRead,BufNewFile *.rabl setf ruby

" Markdown
  let g:instant_markdown_slow = 1
  let g:vim_markdown_new_list_item_indent = 2
  let g:vim_markdown_no_default_key_mappings = 1
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

" :Scriptnames func
" " Execute 'cmd' while redirecting output.
" Delete all lines that do not match regex 'filter' (if not empty).
" Delete any blank lines.
" Delete '<whitespace><number>:<whitespace>' from start of each line.
" Display result in a scratch buffer.
function! s:Filter_lines(cmd, filter)
  let save_more = &more
  set nomore
  redir => lines
  silent execute a:cmd
  redir END
  let &more = save_more
  new
  setlocal buftype=nofile bufhidden=hide noswapfile
  put =lines
  g/^\s*$/d
  %s/^\s*\d\+:\s*//e
  if !empty(a:filter)
    execute 'v/' . a:filter . '/d'
  endif
  0
endfunction
command! -nargs=? Scriptnames call s:Filter_lines('scriptnames', <q-args>)

" vim:foldmethod=marker:foldlevel=0
