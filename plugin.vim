call plug#begin('$XDG_DATA_HOME/vimplug')

" file
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeChDirMode = 2 " auto change dir 
" useful tool
Plug 'tpope/vim-commentary' " add gc command for commentary
Plug 'tpope/vim-surround'  " add cs commnad to change surround
Plug 'lambdalisue/suda.vim' " edit with sudo

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
set statusline+=%{FugitiveStatusline()}
" program language
Plug 'chr4/nginx.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sillybun/vim-repl'
Plug 'RRethy/vim-hexokinase' " add color to rgb code
" writing
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do':'cd app && yarn install' }
Plug 'hotoo/pangu.vim' 
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" beauty
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_statusline_ontop=0
" better default
Plug 'psliwka/vim-smoothie'

call plug#end()


"color
set background=dark
"colorscheme dracula
highlight Pmenu ctermfg=250 ctermbg=000
hi Normal ctermfg=255 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=255 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE


" fzf

let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>-2)


" NERDTree
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'+',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'»',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'D',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
