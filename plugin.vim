call plug#begin('$XDG_DATA_HOME/vimplug')

" file
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'lambdalisue/suda.vim' " edit with sudo

" git
Plug 'tpope/vim-fugitive'
set statusline+=%{FugitiveStatusline()}

" program language
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sillybun/vim-repl'
Plug 'RRethy/vim-hexokinase' " add color to rgb code

" writing
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do':'cd app && yarn install' }
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" beauty
"Plug 'dracula/vim', { 'as': 'dracula' }
"colorscheme dracula
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0

" better default
Plug 'psliwka/vim-smoothie'

call plug#end()
