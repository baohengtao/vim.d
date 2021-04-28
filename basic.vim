"Preference
set splitbelow
set splitright
set hidden 
set mouse=a

" file
syntax on
set nocompatible
filetype plugin on
set path=$PWD/**

" display
set relativenumber
set number
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
