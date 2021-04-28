" add C-a C-e C-d
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Delete>

" leader key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" shortcut
nnoremap <C-p> :Commands<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :Rg<CR>


" completion with tab key
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



