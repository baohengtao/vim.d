set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = '/Users/htao/.local/workon/nvim/bin/python'
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

runtime basic.vim
runtime plugin.vim
runtime custom.vim
runtime keymap.vim
runtime function.vim
echom "Hi~ (>^.^<)"

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/htao/Cooper/code/project/codproj'
    VirtualEnvActivate torch-pip 
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   colors                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme dracula
highlight Normal ctermbg=none

set guifont=Monaco\ Nerd\ Font\ Mono
set guifontwide=PingFang\ SC
set guioptions-=r
set guioptions-=L
