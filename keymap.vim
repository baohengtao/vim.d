""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Basic Key Binding                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" move line up/down
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==

" Aias
command T tabnew


nnoremap <C-q> :qa!<cr>
autocmd FileType help noremap <buffer> q :q<cr>

" escape with jk 
"inoremap jk <esc>  
inoremap jj <esc>
cnoremap jk <C-C> 
cnoremap jj <C-C>
" tnoremap jk <C-\><C-n> 
" add C-a C-e
inoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" indent
xnoremap < <gv
xnoremap > >gv


" upper case with C-u
inoremap <c-u> <esc>ddO
nnoremap <c-u> viwU
abbrev myweb coopers.zone

" arrow key {{{
inoremap <c-b> <Left>
inoremap <c-f> <Right>
inoremap <expr> <c-p> pumvisible() ? "\<c-e><Up>" : '<Up>'
inoremap <expr> <c-n> pumvisible() ? '<c-e><Down>' :'<Down>' 
" }}}

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Completion                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:coc_snippet_next = g:UltiSnipsJumpForwardTrigger
let g:coc_snippet_prev = g:UltiSnipsJumpBackwardTrigger

imap <C-l> <Plug>(coc-snippets-expand)

" TAB && SELECT ------------{{{
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" }}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Function                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal
let g:toggle_term = "<leader>`"
let s:term_buf_nr = -1
function! ToggleTerminal()
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
execute "nnoremap ".g:toggle_term ." :call ToggleTerminal()<CR>"
execute "tnoremap ".g:toggle_term ." <C-w>N:call ToggleTerminal()<CR>"


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


