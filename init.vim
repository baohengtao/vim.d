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
" colorscheme codeschool 
highlight Normal ctermbg=none
set guioptions-=r

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    font                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_macvim")
  " hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
  " hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
  " hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
  " hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

  " hi diffadd ctermfg=green guifg=#00ff00
  " hi diffdelete ctermfg=red guifg=#ff0000

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


endif
