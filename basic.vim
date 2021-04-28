"Preference
set splitbelow
set splitright

"Personal
set hidden 
"Basic setting
set nocompatible
set path=$PWD/**
set mouse=a
set scrolloff=8 " 光标距离边缘的最小行数
set relativenumber
set number

" auto load when focus file
set autoread
autocmd FocusGained * checktime

" Tab setting
set tabstop=2  " 设置tab显示宽度
set softtabstop=2 " 设置按tab键时得到的宽度
set shiftwidth=2  " 自动缩进时, 缩进长度
set expandtab "使用空格键输入tab
autocmd FileType python set shiftwidth=2 tabstop=2 expandtab

"set guifont=monacoB2:h14
syntax on
"set showcmd
"set t_Co=256
filetype indent on
"set autoindent
set wrap
"set linebreak
"set wrapmargin=2
"set scrolloff=5
"set laststatus=2
"set showmatch
"set hlsearch
"set incsearch
"set ignorecase
"set smartcase
"set autoread
"set list
set wildmode=longest:list,full
