call plug#begin('$XDG_CONFIG_HOME/nvim/vimplug')

" develop -----------------------------{{{
Plug 'jmcantrell/vim-virtualenv'
  \ | let g:virtualenv_auto_activate=1

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  \ | let g:coc_node_path = $HOME . '/.local/n/bin/node'
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'liuchengxu/vista.vim' " tag bar with lsp

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  \ | let g:UltiSnipsSnippetDirectories=["UltiSnips", "coolsnips"] 
  \ | let g:UltiSnipsEditSplit="vertical"
  \ | let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit=
  \ $XDG_CONFIG_HOME . '/nvim/coolsnips'

Plug 'urbainvaes/vim-ripple' | Plug 'machakann/vim-highlightedyank' " repl
Plug 'kana/vim-textobj-user' | Plug 'bps/vim-textobj-python' " select text obj
" }}}

" file exploer --------------------{{{
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
  \ | let g:clap_layout = { 'relative': 'editor' }
Plug 'tpope/vim-fugitive'
Plug 'lambdalisue/fern.vim' | Plug 'lambdalisue/fern-git-status.vim' 
  \ | Plug 'lambdalisue/nerdfont.vim'
  \ | Plug 'lambdalisue/fern-renderer-nerdfont.vim' 
  \ | Plug 'lambdalisue/glyph-palette.vim'
  \ | Plug 'lambdalisue/fern-hijack.vim'
  \ | Plug 'lambdalisue/fern-bookmark.vim'
  \ | Plug 'LumaKernel/fern-mapping-fzf.vim'
  \ | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  \ | Plug 'junegunn/fzf.vim'
  \ | let g:fern#renderer = "nerdfont"
  \ | let g:fern#disable_default_mappings = 1
  \ | let g:fern#mapping#fzf#disable_default_mappings = 1

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END


Plug 't9md/vim-choosewin'  | let g:choosewin_overlay_enable = 0

" }}}

" writing -------------------------{{{
" Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'hotoo/pangu.vim' 
Plug 'lervag/vimtex'
" }}}



" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'tpope/vim-unimpaired' " add [ command
Plug 'lambdalisue/suda.vim' " edit with sudo
Plug 'mbbill/undotree'

" Startup ------------------------{{{
Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify', {'branch': 'center'}
let g:session_directory=$XDG_DATA_HOME . '/nvim/session'
let g:startify_session_directory = g:session_directory
let g:startify_session_dir = g:session_directory
let g:NERDTreeBookmarksFile = expand('$XDG_DATA_HOME') . '/nvim/bookmarks' 
" }}}

" beauty
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'| Plug 'itchyny/vim-gitbranch'
Plug 'psliwka/vim-smoothie'


" depreciated
Plug 'preservim/nerdtree'   | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
  \ | let g:NERDTreeHijackNetrw=0

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


" depreciated
Plug 'tpope/vim-vinegar' " refine netrw exploer  
