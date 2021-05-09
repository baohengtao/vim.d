" escape with jk 
inoremap jk <esc>  
cnoremap jk <C-C> 
tnoremap jk <C-\><C-n> 
" add C-a C-e C-d
inoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
inoremap <esc> <nop>
inoremap <esc> 


" leader key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" shortcut
nnoremap <leader>p :Commands<CR>
nnoremap <leader>t :NERDTreeToggle %<CR>
nnoremap <leader>f :History<CR>
nnoremap <leader>r :History:<CR>
" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <silent> <Leader>ee :FASD<CR>

" upper case with C-u
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwU

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
abbrev myweb coopers.zone
inoremap <c-f> <Left>
inoremap <c-b> <Right>
inoremap <expr> <c-p> pumvisible() ? '<c-e><Up>' : '<Up>'
inoremap <expr> <c-n> pumvisible() ? '<c-e><Down>' :'<Down>' 


" inoremap <Up> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" inoremap <Right> <nop>
