call plug#begin('$XDG_DATA_HOME/vimplug')

" develop -----------------------------{{{
Plug 'tpope/vim-fugitive'
Plug 'jmcantrell/vim-virtualenv'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " lsp: autocomplete
Plug 'lifepillar/vim-mucomplete'
Plug 'sheerun/vim-polyglot' " syntax highlighting
let g:vim_indent_cont = shiftwidth() " see :h ft-vim-indent
" }}}

" lightline
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
runtime plug.setting/lightline.vim

" file & search --------------------------------{{{

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

if has('nvim')
  runtime plug.setting/fasd.nvim
else
  runtime plug.setting/fasd.vim
endif
" }}}


" file exploer --------------------{{{
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" }}}


" writing -------------------------{{{
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do':'cd app && yarn install' }
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
" }}}


" better experience
Plug 'psliwka/vim-smoothie'
" beauty
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'lambdalisue/suda.vim' " edit with sudo

" Startup ------------------------{{{
Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify', {'branch': 'center'}
runtime plug.setting/startify.vim
" }}}




call plug#end()





