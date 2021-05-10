"" Sessions and Startify
let g:session_directory=$XDG_DATA_HOME . '/nvim/session'
let g:startify_session_directory = g:session_directory
let g:startify_session_dir = g:session_directory
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_persist_font=0
let g:session_persist_colors=0
let g:session_persist_globals=0
let g:session_default_name='cooper'

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['  Sessions']       },
      \ { 'type': 'files',     'header': ['  MRU']            },
      \ { 'type': 'bookmarks', 'header': ['  Bookmarks']      },
      \ { 'type': 'commands',  'header': ['  Commands']       },
      \ ]
                  



                  
                  
            








" Git Nerd
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
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
let $FZF_DEFAULT_COMMAND="fd  --no-ignore-vcs "
let $FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --multi --info=inline --exact'

let g:fzf_layout = { 'window': { 'width': 0.75, 'height': 0.75 } }
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


let g:ctrlp_extensions = ['sample']
