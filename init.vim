set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = '/Users/htao/.local/workon/nvim/bin/python'
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

runtime basic.vim
runtime plugin.vim
runtime custom.vim
runtime keymap.vim
runtime keymap_plug.vim
runtime fern.vim
echom "Hi~ (>^.^<)"

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/htao/Cooper/code/project/codproj'
    VirtualEnvActivate torch-pip 
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
