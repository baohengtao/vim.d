
let g:neoterm_callbacks = {}
function! g:neoterm_callbacks.before_new()
  if winwidth('.') > 100
    let g:neoterm_default_mod = 'botright vertical'
  else
    let g:neoterm_default_mod = 'botright'
  end
endfunction

let g:neoterm_repl_python = ['pyenv shell', 'clear', 'ipython']

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


" vimtex setting
let g:tex_flavor = 'latex'
" disable auto display error, :copen to manually open
let g:vimtex_quickfix_mode = 0 
let g:tex_conceal = 'abdmg' 



