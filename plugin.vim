call plug#begin('$XDG_DATA_HOME/vimplug')

" develop
Plug 'tpope/vim-fugitive'
Plug 'jmcantrell/vim-virtualenv'

" program language
Plug 'neoclide/coc.nvim', {'branch': 'release'} " lsp: autocomplete
Plug 'lifepillar/vim-mucomplete'
Plug 'sheerun/vim-polyglot' " syntax highlighting
" Plug 'kassio/neoterm' " repl: interactive with ipython 
" Plug 'codota/tabnine-vim'
let g:vim_indent_cont = shiftwidth() " see :h ft-vim-indent


" file & search
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify', {'branch': 'center'}


" writing
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do':'cd app && yarn install' }
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" better experience
Plug 'psliwka/vim-smoothie'

" beauty
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'


" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'lambdalisue/suda.vim' " edit with sudo


call plug#end()
