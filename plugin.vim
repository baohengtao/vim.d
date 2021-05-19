call plug#begin('$XDG_CONFIG_HOME/nvim/vimplug')




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   writing                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" add space between chinese and ascii
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
" align tabular
Plug 'godlygeek/tabular'
" support chinese input source 
Plug 'lyokha/vim-xkbswitch'
let g:XkbSwitchEnabled =1  

" autopair
" Plug 'jiangmiao/auto-pairs'
" let g:AutoPairsFlyMode=0
" let g:AutoPairsShortcutBackInsert='<M-b>'


" vimwiki markdown 
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'

" vimtex
Plug 'lervag/vimtex'
 let g:tex_flavor = 'latex'
 " disable auto display error, :copen to manually open
let g:vimtex_quickfix_mode = 0 
let g:tex_conceal = 'abdmg' 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Add language support in  writing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-ultisnips'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Develop                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'jmcantrell/vim-virtualenv'
let g:virtualenv_auto_activate=1


Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "coolsnips"] 
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit=
  \ $XDG_CONFIG_HOME . '/nvim/coolsnips'

" tag bar with lsp
Plug 'liuchengxu/vista.vim'
" repl
Plug 'urbainvaes/vim-ripple' | Plug 'machakann/vim-highlightedyank'
" select text obj
Plug 'kana/vim-textobj-user' | Plug 'bps/vim-textobj-python'
" syntax highlighting
Plug 'sheerun/vim-polyglot'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  coc.nvim                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dense-analysis/ale'
let g:coc_node_path = $HOME . '/.local/n/bin/node'
let g:coc_global_extensions = [
  \ 'coc-tsserver', 'coc-list', 
  \ 'coc-pyright', 'coc-tabnine', 'coc-pydocstring',
  \ 'coc-json', 'coc-vimlsp',
  \ 'coc-texlab', 'coc-markdownlint', 'coc-snippets',
  \ 'coc-git', 'coc-gist',
  \ 'coc-higlight', 'coc-thrift-syntax-support',
  \ 'coc-yank', 'coc-ci', 'fzf-preview'
  \ ]
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-lists',  {'do': 'yarn install --frozen-lockfile'}

" Plug 'fannheyward/coc-pyright',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tabnine',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'yaegassy/coc-pydocstring',  {'do': 'yarn install --frozen-lockfile'}

" Plug 'neoclide/coc-json',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'iamcco/coc-vimlsp',  {'do': 'yarn install --frozen-lockfile'}

" Plug 'fannheyward/coc-texlab',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'fannheyward/coc-markdownlint',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-snippets',  {'do': 'yarn install --frozen-lockfile'}

" Plug 'neoclide/coc-git',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'voldikss/coc-gist',  {'do': 'yarn install --frozen-lockfile'}

" Plug 'neoclide/coc-highlight',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'cposture/coc-thrift-syntax-support',  {'do': 'yarn install --frozen-lockfile'}


" Plug 'neoclide/coc-yank',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'fannheyward/coc-ci',  {'do': 'yarn install --frozen-lockfile'}
" Plug 'yuki-yano/fzf-preview.vim',  {'do': 'yarn install --frozen-lockfile'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Git                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/gina.vim'
Plug 'jreybert/vimagit'
let g:gitgutter_signs=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
let g:clap_layout = { 'relative': 'editor' }

Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
let $FZF_DEFAULT_COMMAND="fd  --no-ignore-vcs "
let $FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --multi --info=inline --exact'
let g:fzf_layout = { 'window': { 'width': 0.75, 'height': 0.75 } }
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Fern                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'lambdalisue/fern.vim' 
Plug 'lambdalisue/fern-git-status.vim' 
Plug 'lambdalisue/nerdfont.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/fern-renderer-nerdfont.vim' 
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-bookmark.vim'
Plug 'LumaKernel/fern-mapping-fzf.vim'
let g:fern#renderer = "nerdfont"
let g:fern#disable_default_mappings = 1
let g:fern#disable_drawer_auto_resize=0
let g:fern#disable_drawer_auto_winfixwidth=1
let g:fern#mapping#fzf#disable_default_mappings = 1
let g:fern#drawer_width = 25
" if has_key(plugs, 'glyph-palette') 
  augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
    autocmd FileType nerdtree,startify call glyph_palette#apply()
  augroup END
" endif 

function! s:init_fern() abort
  nmap <buffer><expr>
    \ <Plug>(fern-my-cr)
    \ fern#smart#leaf(
    \ "\<Plug>(fern-action-open:select)",
    \ "\<Plug>(fern-action-expand:stay)",
    \ "\<Plug>(fern-action-collapse)",
    \)
  nmap <buffer><expr>
    \ <Plug>(fern-my-mouse)
    \ fern#smart#leaf(
    \ "\<Plug>(fern-action-open)",
    \ "\<Plug>(fern-action-expand:stay)",
    \ "\<Plug>(fern-action-collapse)",
    \)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-mouse)
  nmap <buffer> <CR> <Plug>(fern-my-cr)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> d <Plug>(fern-action-trash)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> M <Plug>(fern-action-rename)
  nmap <buffer> h <Plug>(fern-action-hidden-toggle)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> s <Plug>(fern-action-mark:toggle)
  nmap <buffer> o <Plug>(fern-action-open:select)
  nmap <buffer> b <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> ff <Plug>(fern-action-fzf-files)
  nmap <buffer> fd <Plug>(fern-action-fzf-dirs)
  nmap <buffer> A <Plug>(fern-action-fzf-both)
  nmap <buffer> c <Plug>(fern-action-tcd:cursor)
  nmap <buffer> < <Plug>(fern-action-leave)
  nmap <buffer> > <Plug>(fern-action-enter)
  nmap <buffer> q :<C-u>quit<CR>
  nmap <buffer> = <Plug>(fern-action-zoom:reset)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    tool                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " add gc command for commentary
Plug 'tpope/vim-commentary'
 " add cs commnad to change surround
Plug 'tpope/vim-surround' 
" add [ command
Plug 'tpope/vim-unimpaired' 
" edit with sudo
Plug 'lambdalisue/suda.vim' 
Plug 'simeji/winresizer'
let g:winresizer_enable=1
let g:winresizer_gui_enable=1
Plug 'mbbill/undotree'

Plug 't9md/vim-choosewin'
Plug 'talek/obvious-resize'
let g:obvious_resize_default = 2
let g:obvious_resize_run_tmux = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   startup                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'xolox/vim-session' | Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify', {'branch': 'center'}
let g:session_directory=$XDG_DATA_HOME . '/nvim/session'
let g:startify_session_directory = g:session_directory
let g:startify_session_dir = g:session_directory
let g:BookmarksFile = expand('$XDG_CONFIG_HOME') . '/nvim/bookmarks' 
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'| Plug 'itchyny/vim-gitbranch'
Plug 'psliwka/vim-smoothie'

call plug#end()





if has_key(plugs, 'vim-startify')
  runtime plug.setting/startify.vim
endif


if has_key(plugs, 'lightline.vim')
  runtime plug.setting/lightline.vim
endif




