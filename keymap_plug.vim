
" Function Map {{{
nnoremap <leader>s :tabnew \| Startify<CR>
nnoremap <leader>p :<C-U>Clap command<CR>
nnoremap <leader><leader> :Clap<CR>
nnoremap <leader>fr :<C-U>Clap history<CR>
nnoremap <leader>ff :<C-U>Clap files<CR>
nnoremap <leader>fs :<C-U>Clap grep2<CR>
nnoremap <leader>gf :<C-U>Clap gfiles<CR>
nnoremap <leader>gd :<C-U>Clap git_diff_files<CR>
nnoremap <leader>gc :<C-U>Clap commits<CR>
nnoremap <leader>fb :<C-U>Clap buffers<CR>
nnoremap <leader>fw :<C-U>Clap windows<CR>
nnoremap <leader>tc :<C-U>Fern %:h -drawer -toggle -keep<CR>
nnoremap <leader>tt :<C-U>Fern . -reveal=% -drawer -toggle -keep<CR>
nmap - <Plug>(choosewin)
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




