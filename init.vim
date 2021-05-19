set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = '/Users/htao/.local/workon/nvim/bin/python'
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

runtime basic.vim
runtime plugin.vim
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
  highlight DiffAdd     term=bold    cterm=bold ctermfg=231 ctermbg=64 gui=bold guifg=#f0f0f0 guibg=#43820d
  highlight DiffChange  term=bold    ctermfg=231 ctermbg=23 guifg=#f0f0f0 guibg=#1c3657 
  highlight DiffDelete  term=bold    ctermfg=88 guifg=#880708 
  highlight DiffText    term=reverse cterm=bold ctermfg=231 ctermbg=24 gui=bold guifg=#f0f0f0 guibg=#204a87  
  highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE 
  highlight SignifySignDelete ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE
  highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE

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
