"Preference --- {{{
" Some servers have issues with backup files, see #649.
" for coc compality
set nobackup
set nowritebackup
set shortmess+=c
set completeopt=noinsert,noselect,menuone

set cmdheight=2
set signcolumn=number
set splitbelow
set splitright
set hidden 
set laststatus=2
set conceallevel=2
" Gui
set guifont=Monaco\ Nerd\ Font\ Mono
set guioptions=r

" Sessions
set sessionoptions-=buffers
set sessionoptions-=options
" cmd setting
set wildmenu 
set wildmode=list:longest,full
" display
set relativenumber
set number
set numberwidth=2
set scrolloff=8 " 光标距离边缘的最小行数
set wrap  " wrap lines
" --- }}}


"Primary
syntax on
set nocompatible
set encoding=utf-8
filetype plugin on
set path=$PWD/**
set autoread
set mouse=a
" reload
autocmd FocusGained * checktime
set updatetime=100

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
set incsearch

" Change cursor shape for iTerm2 on macOS {{{
  if $TERM_PROGRAM =~# 'iTerm'
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
  " inside tmux
  if exists('$TMUX') && $TERM != 'xterm-kitty'
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif
  if has('nvim')
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2
  endif
  " }}}
