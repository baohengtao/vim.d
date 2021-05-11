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




let g:vimwiki_list = [ {'path': '~/vimwiki/', 'syntax':'markdown', 'ext': '.md'} ] 

" leaderf
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'


let g:Lf_PreviewResult = {
  \ 'File': 0,
  \ 'Buffer': 0,
  \ 'Mru': 0,
  \ 'Tag': 0,
  \ 'BufTag': 1,
  \ 'Function': 1,
  \ 'Line': 0,
  \ 'Colorscheme': 0,
  \ 'Rg': 0,
  \ 'Gtags': 0
  \}

