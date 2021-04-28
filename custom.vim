

" NERDTree
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeChDirMode = 2 " auto change dir 
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


" fzf
let g:fzf_layout = { 'window': { 'width': 0.75, 'height': 0.75 } }
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
