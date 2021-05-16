call plug#begin('$XDG_CONFIG_HOME/nvim/vimplug')




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   writing                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
Plug 'lervag/vimtex'

" Enable Chinese Support
Plug 'lyokha/vim-xkbswitch'
let g:XkbSwitchEnabled =1  





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Develop                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'jmcantrell/vim-virtualenv'
let g:virtualenv_auto_activate=1

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
let g:coc_node_path = $HOME . '/.local/n/bin/node'

Plug 'liuchengxu/vista.vim' " tag bar with lsp

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "coolsnips"] 
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit=
  \ $XDG_CONFIG_HOME . '/nvim/coolsnips'

Plug 'urbainvaes/vim-ripple' | Plug 'machakann/vim-highlightedyank' " repl
Plug 'kana/vim-textobj-user' | Plug 'bps/vim-textobj-python' " select text obj
Plug 'sheerun/vim-polyglot' " syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     search                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
  \ | let g:clap_layout = { 'relative': 'editor' }
Plug 'tpope/vim-fugitive'

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
Plug 'lambdalisue/fern.vim' | Plug 'lambdalisue/fern-git-status.vim' 
Plug 'lambdalisue/nerdfont.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/fern-renderer-nerdfont.vim' 
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-bookmark.vim'
Plug 'LumaKernel/fern-mapping-fzf.vim'
let g:fern#renderer = "nerdfont"
let g:fern#disable_default_mappings = 1
let g:fern#mapping#fzf#disable_default_mappings = 1

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

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

Plug 'mbbill/undotree'

Plug 't9md/vim-choosewin'  | let g:choosewin_overlay_enable = 0

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
Plug 'itchyny/lightline.vim'| Plug 'itchyny/vim-gitbranch'
Plug 'psliwka/vim-smoothie'

call plug#end()





if has_key(plugs, 'vim-startify')
  runtime plug.setting/startify.vim
endif


if has_key(plugs, 'lightline.vim')
  runtime plug.setting/lightline.vim
endif




