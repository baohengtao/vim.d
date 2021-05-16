
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Function                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
" let g:toggle_term = "<leader>`"
let s:term_buf_nr = -1
function! s:ToggleTerminal()
    if s:term_buf_nr == -1
      if has('nvim')
        execute "split | bot term"
      else
        execute "bot term"
      endif
      let s:term_buf_nr = bufnr("$")
    else
        execute "bd! " .s:term_buf_nr
        let s:term_buf_nr = -1
    endif
endfunction
command! ToggleTerminal call <SID>ToggleTerminal()
" execute "nnoremap ".g:toggle_term ." :call ToggleTerminal()<CR>"
" execute "tnoremap ".g:toggle_term ." <C-w>N:call ToggleTerminal()<CR>"


" Reveal In Finder
function! s:RevealInFinder()
  if filereadable(expand("%"))
    let l:command = "open -R " . shellescape("%")
  elseif getftype(expand("%:p:h")) == "dir"
    let l:command = "open " . shellescape("%") . ":p:h"
  else
    let l:command = "open ."
  endif

  execute ":silent! !" . l:command

  " For terminal Vim not to look messed up.
  redraw!
endfunction

command! Reveal call <SID>RevealInFinder()


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




function! s:ToggleGStatus()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        vertical Git
    endif
endfunction
command! ToggleGStatus call <SID>ToggleGStatus() 
