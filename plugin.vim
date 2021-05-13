call plug#begin('$XDG_CONFIG_HOME/nvim/vimplug')

" develop -----------------------------{{{
Plug 'tpope/vim-fugitive'
Plug 'jmcantrell/vim-virtualenv'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete with lsp
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'liuchengxu/vista.vim' " tag bar with lsp
" }}}

" Snippets ------------------------{{{
Plug 'SirVer/ultisnips' " Track the engine 
Plug 'honza/vim-snippets' " Colletcions of snippets



" }}}

" file exploer --------------------{{{
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'
" }}}

" writing -------------------------{{{
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'hotoo/pangu.vim' 
Plug 'lervag/vimtex'
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
Plug 'itchyny/lightline.vim'| Plug 'itchyny/vim-gitbranch'
Plug 'ryanoasis/vim-devicons'


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
