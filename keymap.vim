" Aias
command T tabnew

" escape with jk 
inoremap jk <esc>  
cnoremap jk <C-C> 
tnoremap jk <C-\><C-n> 
" add C-a C-e
inoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
inoremap <esc> <nop>

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
inoremap <expr> <c-p> pumvisible() ? '<c-e><Up>' : '<Up>'
inoremap <expr> <c-n> pumvisible() ? '<c-e><Down>' :'<Down>' 
" }}}

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif


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


