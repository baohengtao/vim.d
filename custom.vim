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


" let g:vimtex_view_general_viewer
"   \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'

" " This adds a callback hook that updates Skim after compilation
" let g:vimtex_compiler_callback_hooks = ['UpdateSkim']

function! UpdateSkim(status)
  if !a:status | return | endif

  let l:out = b:vimtex.out()
  let l:tex = expand('%:p')
  let l:cmd = [g:vimtex_view_general_viewer, '-r']

  if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
  endif

  if has('nvim')
    call jobstart(l:cmd + [line('.'), l:out, l:tex])
  elseif has('job')
    call job_start(l:cmd + [line('.'), l:out, l:tex])
  else
    call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
  endif
endfunction
