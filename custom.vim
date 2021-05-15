

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

