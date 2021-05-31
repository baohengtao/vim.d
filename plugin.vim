call plug#begin('$XDG_CONFIG_HOME/nvim/vimplug')



Plug 'mg979/vim-visual-multi'


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
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html'
let g:closetag_filetypes = 'html,xhtml,phtml'

" let g:AutoPairsFlyMode=0
" let g:AutoPairsShortcutBackInsert='<M-b>'


" vimwiki markdown 
" Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'

" vimtex
Plug 'lervag/vimtex'
 let g:tex_flavor = 'latex'
 " disable auto display error, :copen to manually open
let g:vimtex_quickfix_mode = 0 
" let g:tex_conceal = 'abdmg' 


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

" scheme conjure 
Plug 'Olical/conjure'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  coc.nvim                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dense-analysis/ale'
let g:coc_global_extensions = [
  \ 'coc-tsserver', 'coc-lists', 
  \ 'coc-pyright', 'coc-tabnine', 'coc-pydocstring',
  \ 'coc-json', 'coc-vimlsp',
  \ 'coc-texlab', 'coc-markdownlint', 
  \ 'coc-snippets', 'coc-ultisnips',
  \ 'coc-highlight', 
  \ 'coc-ci', 'coc-fzf-preview',
  \ 'coc-word', 'coc-yank',
  \ ]
  " \ 'coc-git', 'coc-gist',
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
"                                    Clap                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
let g:clap_layout = { 'relative': 'editor' }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   FZF                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
"vim sugar for the UNIX shell commands that need it the most 
Plug 'tpope/vim-eunuch'
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Coc-FZF-Preview                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_preview_floating_window_rate = 0.9
let g:fzf_preview_direct_window_option = ''
let g:fzf_preview_default_fzf_options = { '--reverse': v:true, '--preview-window': 'wrap' }
" Add fzf quit mapping
let g:fzf_preview_quit_map = 1
" jump to the buffers by default, when possible
let g:fzf_preview_buffers_jump = 0
" The file name selected by fzf becomes {}
let g:fzf_preview_command = 'bat --color=always --plain {-1}' " Installed bat
" g:fzf_binary_preview_command is executed if this command succeeds, and g:fzf_preview_command is executed if it fails
let g:fzf_preview_if_binary_command = '[[ "$(file --mime {})" =~ binary ]]'
" Commands used for binary file
let g:fzf_binary_preview_command = 'echo "{} is a binary file"'
" Commands used to get the file list from project
" let g:fzf_preview_filelist_command = 'git ls-files --exclude-standard'              
let g:fzf_preview_filelist_command = 'rg --files --hidden --follow --no-messages -g \!"* *"' 

" Commands used to get the file list from git repository
let g:fzf_preview_git_files_command = 'git ls-files --exclude-standard'

" Commands used to get the file list from current directory
let g:fzf_preview_directory_files_command = 'rg --files --hidden --follow --no-messages -g \!"* *"'

" Commands used to get the git status file list
let g:fzf_preview_git_status_command = 'git -c color.status=always status --short --untracked-files=all'

" Commands used for git status preview.
let g:fzf_preview_git_status_preview_command =  "[[ $(git diff --cached -- {-1}) != \"\" ]] && git diff --cached --color=always -- {-1} || " .
\ "[[ $(git diff -- {-1}) != \"\" ]] && git diff --color=always -- {-1} || " .
\ g:fzf_preview_command

" Commands used for project grep
let g:fzf_preview_grep_cmd = 'rg --line-number --no-heading --color=never'

" MRU and MRW cache directory
let g:fzf_preview_cache_directory = expand('~/.cache/vim/fzf_preview')

" If this value is not 0, disable mru and mrw
let g:fzf_preview_disable_mru = 0

" Limit of the number of files to be saved by mru
let g:fzf_preview_mru_limit = 1000

" Commands used for current file lines
let g:fzf_preview_lines_command = 'cat -n'                                " Not Installed bat
" let g:fzf_preview_lines_command = 'bat --color=always --plain --number' " Installed bat

" Commands used for preview of the grep result
let g:fzf_preview_grep_preview_cmd = expand('<sfile>:h:h') . '/bin/preview_fzf_grep'

" Cache directory for mru and mrw
let g:fzf_preview_cache_directory = expand('~/.cache/vim/fzf_preview')

" Keyboard shortcuts while fzf preview is active
let g:fzf_preview_preview_key_bindings = ''
" let g:fzf_preview_preview_key_bindings = 'ctrl-d:preview-page-down,ctrl-u:preview-page-up,?:toggle-preview'

" Specify the color of fzf
let g:fzf_preview_fzf_color_option = ''

" Set the processes when selecting an element with fzf
let g:fzf_preview_custom_processes = {}
" For example, set split to ctrl-s
" let g:fzf_preview_custom_processes['open-file'] = fzf_preview#remote#process#get_default_processes('open-file')
" on coc extensions
" let g:fzf_preview_custom_processes['open-file'] = fzf_preview#remote#process#get_default_processes('open-file', 'coc')
" let g:fzf_preview_custom_processes['open-file']['ctrl-s'] = g:fzf_preview_custom_processes['open-file']['ctrl-x']
" call remove(g:fzf_preview_custom_processes['open-file'], 'ctrl-x')

" Use as fzf preview-window option
let g:fzf_preview_fzf_preview_window_option = ''
" let g:fzf_preview_fzf_preview_window_option = 'up:30%'

" Use vim-devicons
let g:fzf_preview_use_dev_icons = 0

" Use vim-devicons
" let g:fzf_preview_history_dir = false
" let g:fzf_preview_history_dir = '~/.fzf'

" devicons character width
let g:fzf_preview_dev_icon_prefix_string_length = 3

" Devicons can make fzf-preview slow when the number of results is high
" By default icons are disable when number of results is higher that 5000
let g:fzf_preview_dev_icons_limit = 5000

" The theme used in the bat preview
" $FZF_PREVIEW_PREVIEW_BAT_THEME = 'dracula'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Coding                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neoclide/coc/nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> w <Plug>(coc-ci-w)
nmap <silent> b <Plug>(coc-ci-b)
" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:coc_snippet_next = g:UltiSnipsJumpForwardTrigger
let g:coc_snippet_prev = g:UltiSnipsJumpBackwardTrigger

imap <C-l> <Plug>(coc-snippets-expand)

" self defined function
nnoremap <leader>` :ToggleTerminal<CR>
tnoremap <leader>` <C-w>N:ToggleTerminal<CR>
nnoremap <leader>i :tab term<CR>
tnoremap <C-W> <C-\><C-n>:close<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Fern                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>tc :<C-U>Fern %:h -drawer -toggle -keep -width=25<CR>
nnoremap <leader>tt :<C-U>Fern . -reveal=% -drawer -toggle -width=25<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Clap                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>p :<C-U>Clap command<CR>
nnoremap <leader><leader> :Clap<CR>
nnoremap <leader>fr :<C-U>Clap history<CR>
nnoremap <leader>ff :<C-U>Clap files<CR>
nnoremap <leader>fs :<C-U>Clap grep2<CR>
nnoremap <leader>fg :<C-U>Clap gfiles<CR>
nnoremap <leader>fb :<C-U>Clap buffers<CR>
nnoremap <leader>fw :<C-U>Clap windows<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Git                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gs :<C-U>ToggleGStatus<CR>
nnoremap <leader>gc :<C-U>Clap commits<CR>
nnoremap <leader>gd :<C-U>Gvdiff<CR>

" gitgutter
let g:gitgutter_map_keys=0
set foldtext=gitgutter#fold#foldtext()
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)
nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)

omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
omap ih <Plug>(GitGutterTextObjectInnerVisual)
omap ah <Plug>(GitGutterTextObjectOuterVisual)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Windows                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>s :tabnew \| Startify<CR>
nmap - <Plug>(choosewin)
noremap <silent> <C-Up> :<C-U>ObviousResizeUp<CR>
noremap <silent> <C-Down> :<C-U>ObviousResizeDown<CR>
noremap <silent> <C-Left> :<C-U>ObviousResizeLeft<CR>
noremap <silent> <C-Right> :<C-U>ObviousResizeRight<CR>
nnoremap <leader>bd :Kwbd<CR> 

