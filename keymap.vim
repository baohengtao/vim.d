""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Alias                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoreabbrev <expr> H getcmdtype() == ":" && getcmdline() == "h" ? "tab h" : "h"
command T tabnew
au CmdlineLeave : if getcmdline() =~# '^h\%[elp]\s' | exe 'e ' .. &helpfile | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Basic Key Binding                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" move line up/down
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==



nnoremap <C-q> :qa!<cr>
autocmd FileType help noremap <buffer> q :q<cr>

" escape with jk 
inoremap jj <esc>
cnoremap jk <C-C> 
cnoremap jj <C-C>

" add C-a C-e
inoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" indent
xnoremap < <gv
xnoremap > >gv

inoremap <c-b> <Left>
inoremap <c-f> <Right>
inoremap <expr> <c-p> pumvisible() ? "\<c-e><Up>" : '<Up>'
inoremap <expr> <c-n> pumvisible() ? '<c-e><Down>' :'<Down>' 

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Completion                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" self defined function
nnoremap <leader>` :ToggleTerminal<CR>
tnoremap <leader>` <C-w>N:ToggleTerminal<CR>
nnoremap <leader>i :tab term<CR>


