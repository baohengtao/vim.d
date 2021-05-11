
" Vimscript file settings -----------------------{{{
augroup filetype_vim 
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" tab setting
set tabstop=2  " 设置tab显示宽度
set softtabstop=2 " 设置按tab键时得到的宽度
set shiftwidth=2  " 自动缩进时, 缩进长度
set expandtab "使用空格键输入tab
autocmd FileType python set shiftwidth=2 tabstop=2 expandtab

" indent
filetype indent on
set autoindent
set smartindent


set foldlevelstart=1
set nofoldenable


let g:vim_indent_cont = shiftwidth() " see :h ft-vim-indent
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
