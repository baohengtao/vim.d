" Git Nerd
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'M',
      \ 'Staged'    :'+',
      \ 'Untracked' :'?',
      \ 'Renamed'   :'»',
      \ 'Unmerged'  :'═',
      \ 'Deleted'   :'D',
      \ 'Dirty'     :'✗',
      \ 'Ignored'   :'☒',
      \ 'Clean'     :'✔︎',
      \ 'Unknown'   :'?',
      \ }


" depreciated
" nnoremap <expr> <leader>tc len(bufname('%')) ? ":NERDTreeToggle %<CR>" : ":NERDTreeToggle<CR>"
" nnoremap <leader>tt :<C-U>NERDTreeToggle<CR>
" nnoremap <leader>tc :<C-U>NERDTreeToggle %<CR>
"
"

