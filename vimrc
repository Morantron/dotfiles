" General settings
  set nocompatible              " be iMproved, required
  filetype off                  " required
  set ai
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set number
  set laststatus=2
  set encoding=utf-8
  set mouse=a
  syntax on
  filetype on
  filetype plugin on
  filetype plugin indent on
  set cindent
  set smartindent
  set autoindent
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
  set term=screen-256color
  set backupcopy=yes

" Plugins
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Bundle 'Soares/butane.vim'
  Bundle 'kien/ctrlp.vim'
  Bundle 'Morantron/morankai'
  Bundle 'mattn/emmet-vim'
  Bundle 'w0ng/vim-hybrid'
  Bundle 'sjl/gundo.vim'
  Bundle 'croaker/mustang-vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/nerdtree'
  Bundle 'vim-scripts/scratch.vim'
  Bundle 'scrooloose/syntastic'
  Bundle 'groenewege/vim-less'
  "Bundle 'marijnh/tern_for_vim'
  Bundle 'SirVer/ultisnips'
  Bundle 'Morantron/my-snippets'
  Bundle 'honza/vim-snippets'
  Bundle 'bling/vim-airline'
  Bundle 'jeetsukumaran/vim-buffergator'
  Bundle 'tpope/vim-dispatch'
  Bundle 'monokrome/vim-testdrive'
  Bundle 'tpope/vim-fugitive'
  Bundle 'nathanaelkane/vim-indent-guides'
  Bundle 'digitaltoad/vim-jade'
  Bundle 'jelera/vim-javascript-syntax.git'
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
  Bundle 'vim-scripts/dbext.vim'
  Bundle 'vim-scripts/C64.vim'
  Bundle 'benmills/vimux'
  call vundle#end()            " required

" Colors
  colors hybrid


" General mappings
  let mapleader=","

  cmap w!! w !sudo tee > /dev/null %

  " toggle search highlight
  nnoremap <leader>hl :set hlsearch!<CR>

  " toggle quickfix
  nnoremap <leader>qf :call ToggleQuickfixList()<CR>

  " change conf
  nnoremap <leader>rc :e ~/.vimrc<CR>

  " edit javascript snippets
  nnoremap <leader>js :e ~/.vim/bundle/my-snippets/UltiSnips/javascript.snippets<CR>

  " Buffer change
  nnoremap <C-n> :bnext<CR>
  nnoremap <C-p> :bprev<CR>

  " Window navigation
  nnoremap <C-h> <C-W>h
  nnoremap <C-j> <C-W>j
  nnoremap <C-k> <C-W>k
  nnoremap <C-l> <C-W>l

  " ctags
  nnoremap <leader>ct :!ctags -R *<CR>

  "scratch
  nnoremap <leader>ss :Scratch<CR>

  " makemake
  nnoremap \\ :Make<CR>

  " run current buffer in vimscript
  nnoremap <leader>w :w \| :source % <cr>

  " case sensitive search
  nnoremap ,/ :/\C

  " cd to current buffer directory
  nnoremap <leader>cd :cd %:p:h<cr>

" NERDTree conf & mappings
  let g:NERDTreeWinPos = "right"
  nnoremap <C-@> :NERDTreeToggle<CR>
  nnoremap <leader><leader>f :NERDTreeFind<CR>

" CtrlP conf & mappings
  nnoremap <space> :CtrlPMixed<CR>
  let g:ctrlp_map = '<c-t>'
  let g:ctrlp_map = '<leader>t'
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

  function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [lnum1, col1] = getpos("'<")[1:2]
    let [lnum2, col2] = getpos("'>")[1:2]
    let lines = getline(lnum1, lnum2)
    let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][col1 - 1:]
    return join(lines, "\n")
  endfunction

  function! SendToNearestPane(type, ...)
    let reg_save = @@

    if a:0  " Invoked from Visual mode, use gv command.
      silent exe "normal! gvy"
    elseif a:type == 'line'
      silent exe "normal! '[V']y"
    else
      silent exe "normal! `[v`]y"
    endif

    call VimuxSendText(@@)

    let @@ = reg_save
  endfunction

  " If text is selected, save it in the v buffer and send that buffer it to tmux
  nmap \vs :set opfunc=SendToNearestPane<CR>g@
  vmap \vs :<C-U>call SendToNearestPane(visualmode(), 1)<CR>

" Buffergator conf & mappings ( to be removed )
  let g:buffergator_sort_regime = 'basename'
  let g:buffergator_autoupdate = 1
  let g:buffergator_suppress_keymaps = 1
  nnoremap <leader>b :BuffergatorToggle<CR>

" Powerline/Airline conf
  let g:airline_powerline_fonts=1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = ' '

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline#extensions#tabline#enabled = 1

  " unicode symbols ( fucking urxvt )
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'

" Fugitive conf & mappings
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>12 :diffget<CR>
  nnoremap <leader>21 :diffput<CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gg :Ggrep -i 
  "git grep word under cursor
  nnoremap \g yiw:Ggrep <C-r>"<cr>
  nnoremap \n :cnext<cr>
  nnoremap \p :cprev<cr>

" Syntastic conf
  let g:syntastic_error_symbol = '●'
  let g:syntastic_javascript_checkers = ['jsxhint']

" UltiSnips conf
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-J>"
  let g:UltiSnipsJumpBackwardTrigger="<c-K>"

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

" Rspec conf
  let g:rspec_command = "compiler rspec | set makeprg=zeus | Make rspec {spec}"
  map \f :call RunCurrentSpecFile()<CR>

" Dbext conf
  let g:dbext_default_profile_teambox = 'type=MYSQL:user=root:dbname=teambox_developmenet'


" Ruby stuff
  au BufRead,BufNewFile *.rabl setf ruby


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
