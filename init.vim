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





" let g:vimwiki_list = [ {'path': '~/vimwiki/', 'syntax':'markdown', 'ext': '.md'} ] 


" vimtex setting
let g:tex_flavor = 'latex'
" disable auto display error, :copen to manually open
let g:vimtex_quickfix_mode = 0 
let g:tex_conceal = 'abdmg' 

function! s:fasd_update() abort
  if empty(&buftype) || &filetype ==# 'dirvish'
    if has('nvim')
      call jobstart(['fasd', '-A', expand('%:p')])
    else
      call job_start(['fasd', '-A', expand('%:p')])
    endif
  endif
endfunction
augroup fasd
  autocmd!
  autocmd BufWinEnter,BufFilePost * call s:fasd_update()
augroup END
command! FASD call fzf#run(fzf#wrap({'source': 'fasd -al', 'options': '--no-sort --tac --tiebreak=index'}))
nnoremap <silent> <Leader>e :FASD<CR>

