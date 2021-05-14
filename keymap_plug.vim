
" Function Map {{{
nnoremap <leader>s :tabnew \| Startify<CR>
nnoremap <leader>p :LeaderfCommand<CR>
nnoremap <leader><leader> :LeaderfSelf<CR>
nnoremap <leader>fr :<C-U>LeaderfMru<CR>
nnoremap <leader>ff :<C-U>LeaderfFile<CR>
nnoremap <leader>fb :<C-U>LeaderfBuffer<CR>
nnoremap <leader>fw :<C-U>LeaderfWindow<CR>
" nnoremap <expr> <leader>tc len(bufname('%')) ? ":NERDTreeToggle %<CR>" : ":NERDTreeToggle<CR>"
nnoremap <leader>tt :<C-U>NERDTreeToggle<CR>
nnoremap <leader>tc :<C-U>NERDTreeToggle %<CR>
" }}}

" Programming {{{
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>rn <Plug>(coc-rename)
"}}}

let g:sendtorepl_invoke_key = "<leader>w"
nnoremap <leader>r :REPLToggle<Cr>

