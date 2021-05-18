""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Alias                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoreabbrev <expr> H getcmdtype() == ":" && getcmdline() == "h" ? "tab h" : "h"
command T tabnew
au CmdlineLeave : if getcmdline() =~# '^h\%[elp]\s' | exe 'e ' .. &helpfile | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Coding                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neoclide/coc/nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> w <Plug>(coc-ci-w)
nmap <silent> b <Plug>(coc-ci-b)
" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:coc_snippet_next = g:UltiSnipsJumpForwardTrigger
let g:coc_snippet_prev = g:UltiSnipsJumpBackwardTrigger

imap <C-l> <Plug>(coc-snippets-expand)

" self defined function
nnoremap <leader>` :ToggleTerminal<CR>
tnoremap <leader>` <C-w>N:ToggleTerminal<CR>
nnoremap <leader>i :tab term<CR>
tnoremap <C-W> <C-\><C-n>:close<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Fern                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>tc :<C-U>Fern %:h -drawer -toggle -keep -width=25<CR>
nnoremap <leader>tt :<C-U>Fern . -reveal=% -drawer -toggle -width=25<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Clap                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>p :<C-U>Clap command<CR>
nnoremap <leader><leader> :Clap<CR>
nnoremap <leader>fr :<C-U>Clap history<CR>
nnoremap <leader>ff :<C-U>Clap files<CR>
nnoremap <leader>fs :<C-U>Clap grep2<CR>
nnoremap <leader>fg :<C-U>Clap gfiles<CR>
nnoremap <leader>fb :<C-U>Clap buffers<CR>
nnoremap <leader>fw :<C-U>Clap windows<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Git                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gs :<C-U>ToggleGStatus<CR>
nnoremap <leader>gc :<C-U>Clap commits<CR>
nnoremap <leader>gd :<C-U>Gvdiff<CR>

" gitgutter
let g:gitgutter_map_keys=0
set foldtext=gitgutter#fold#foldtext()
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)
nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)

omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
omap ih <Plug>(GitGutterTextObjectInnerVisual)
omap ah <Plug>(GitGutterTextObjectOuterVisual)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Windows                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>s :tabnew \| Startify<CR>
nmap - <Plug>(choosewin)
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>
nnoremap <leader>bd :Kwbd<CR> 

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

