call plug#begin('$XDG_DATA_HOME/vimplug')

" develop -----------------------------{{{
Plug 'tpope/vim-fugitive'
Plug 'jmcantrell/vim-virtualenv'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " lsp: autocomplete
Plug 'sheerun/vim-polyglot' " syntax highlighting
" }}}

" file exploer --------------------{{{
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" }}}

" writing -------------------------{{{
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'hotoo/pangu.vim' 
" }}}


Plug 'psliwka/vim-smoothie'

" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'tpope/vim-unimpaired' " add [ command
Plug 'lambdalisue/suda.vim' " edit with sudo

" Startup ------------------------{{{
Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify', {'branch': 'center'}
" }}}

" beauty
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'


call plug#end()





if has_key(plugs, 'vim-startify')
  runtime plug.setting/startify.vim
endif


if has_key(plugs, 'lightline.vim')
  runtime plug.setting/lightline.vim
endif

if has_key(plugs, "coc.nvim")
  runtime plug.setting/coc.vim
endif
