set runtimepath+=$XDG_CONFIG_HOME/nvim
runtime env.vim
runtime basic.vim
runtime plugin.vim
runtime custom.vim
runtime keymap.vim

echom "Hi~ (>^.^<)"



hi Visual ctermfg=None ctermbg=242 guifg=Cyan guibg=DarkGrey
" Vimscript file settings -----------------------{{{
augroup filetype_vim 
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

