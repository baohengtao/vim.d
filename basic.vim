"Preference
set splitbelow
set splitright
set hidden 
set mouse=a
set laststatus=2
if has("gui_macvim")
  set guifont=Monaco\ Nerd\ Font\ Mono
  set guioptions=r
endif
"Sessions
set sessionoptions-=buffers
set sessionoptions-=options

" file
syntax on
set nocompatible
filetype plugin on
set path=$PWD/**

" display
set relativenumber
set number
set numberwidth=2
set scrolloff=8 " 光标距离边缘的最小行数
set wrap  " wrap lines
" reload
set autoread
autocmd FocusGained * checktime
set updatetime=100

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" cmd setting
set wildmenu 
set wildmode=full




" Change cursor shape for iTerm2 on macOS {
  " bar in Insert mode
  " inside iTerm2
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

  " inside neovim
  if has('nvim')
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2
  endif
" }

