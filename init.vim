set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = '/Users/htao/.local/workon/nvim/bin/python'
runtime plugin.vim
runtime basic.vim
runtime custom.vim
runtime keymap.vim
if has('nvim')
  runtime fasd.nvim
else
  runtime fasd.vim
endif

echom "Hi~ (>^.^<)"



hi Visual ctermfg=None ctermbg=242 guifg=Cyan guibg=DarkGrey
" Vimscript file settings -----------------------{{{
augroup filetype_vim 
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

