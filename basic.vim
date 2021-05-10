"Color
 set background=dark
 highlight Pmenu ctermfg=250 ctermbg=000
 highlight Normal ctermbg=none
 colorscheme "dracula"

"Preference
set splitbelow
set splitright
set hidden 
set mouse=a
set laststatus=2
if has("gui_macvim")
  " font
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
set foldlevelstart=1
set nofoldenable

" reload
set autoread
autocmd FocusGained * checktime
set updatetime=100

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" indent
filetype indent on
set autoindent
set smartindent

" tab setting
set tabstop=2  " 设置tab显示宽度
set softtabstop=2 " 设置按tab键时得到的宽度
set shiftwidth=2  " 自动缩进时, 缩进长度
set expandtab "使用空格键输入tab
autocmd FileType python set shiftwidth=2 tabstop=2 expandtab

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

