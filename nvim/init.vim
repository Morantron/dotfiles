" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

runtime ./plugins.vim

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

runtime ./maps.vim
