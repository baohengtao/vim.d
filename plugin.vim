call plug#begin('$XDG_DATA_HOME/vimplug')

" search
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'

" file
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" session
Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify'
let g:session_directory=$XDG_DATA_HOME . '/nvim/session'
let g:startify_session_directory = g:session_directory
let g:session_autoload = 'no'


" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'lambdalisue/suda.vim' " edit with sudo

" git
Plug 'tpope/vim-fugitive'
set statusline+=%{FugitiveStatusline()}

" program language
Plug 'neoclide/coc.nvim', {'branch': 'release'} " lsp: autocomplete
Plug 'lifepillar/vim-mucomplete'
" Plug 'kassio/neoterm' " repl: interactive with ipython 
" Plug 'codota/tabnine-vim'
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'jmcantrell/vim-virtualenv'

" writing
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do':'cd app && yarn install' }
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" beauty
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0

" better experience
Plug 'psliwka/vim-smoothie'

call plug#end()
