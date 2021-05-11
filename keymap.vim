" Aias
command T tabnew
" Leader Key {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}
" Function Map {{{
nnoremap <leader>t :NERDTreeToggle %<CR>
nnoremap <leader>s :tabnew \| Startify<CR>
nnoremap <leader>p :LeaderfCommand<CR>
nnoremap <leader><leader> :LeaderfSelf<CR>
nnoremap <leader>fr :<C-U>LeaderfMru<CR>
nnoremap <leader>ff :<C-U>LeaderfFile<CR>
nnoremap <leader>fb :<C-U>LeaderfBuffer<CR>
nnoremap <leader>fw :<C-U>LeaderfWindow<CR>
" }}}


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
inoremap <D-u> <esc>ddO
nnoremap <c-u> viwU
abbrev myweb coopers.zone

" arrow key {{{
inoremap <c-b> <Left>
inoremap <c-f> <Right>
inoremap <expr> <c-p> pumvisible() ? '<c-e><Up>' : '<Up>'
inoremap <expr> <c-n> pumvisible() ? '<c-e><Down>' :'<Down>' 
" inoremap <Up> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" inoremap <Right> <nop>
" }}}



