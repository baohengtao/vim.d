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
set guioptions-=r

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    font                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:mono_font='Monaco\ Nerd\ Font\ Mono'
let g:chinese_font='Sarasa\ Fixed\ CL'
let g:font_state=0

function! s:ChangeFont()
  if g:font_state == 0 
    execute "set guifont=" . g:chinese_font
    let g:font_state = 1
  else
    execute "set guifont=" . g:mono_font
    let g:font_state=0

  endif
endfunction
command! ChangeFont call <SID>ChangeFont()

execute "set guifont=" . g:mono_font


