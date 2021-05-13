
" Function Map {{{
nnoremap <leader>s :tabnew \| Startify<CR>
nnoremap <leader>p :LeaderfCommand<CR>
nnoremap <leader><leader> :LeaderfSelf<CR>
nnoremap <leader>fr :<C-U>LeaderfMru<CR>
nnoremap <leader>ff :<C-U>LeaderfFile<CR>
nnoremap <leader>fb :<C-U>LeaderfBuffer<CR>
nnoremap <leader>fw :<C-U>LeaderfWindow<CR>
nnoremap <expr> <leader>t len(bufname('%')) ? ":NERDTreeToggle %<CR>" : ":NERDTreeToggle<CR>"
" }}}

" Programming {{{
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"}}}


" TAB && SELECT ------------{{{
" inoremap <silent><expr> <c-m> coc#refresh()
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


