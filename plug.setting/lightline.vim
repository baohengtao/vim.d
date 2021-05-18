let g:lightline={}
let g:lightline.colorscheme='dracula'

let g:lightline.active={}
let g:lightline.active.left=[
      \ ['mode', 'paste'],
      \ ['gitbranch', 'session',
      \ 'pyenv', 'method', 
      \ 'readonly', 'filename', 'modified']]
" let g:lightline.active.right=[
"                   \ [ 'lineinfo' ],
"                   \ [ 'percent' ],
"                   \ [ 'fileformat', 'fileencoding', 'filetype' ]]

let g:lightline.active.right=[
                  \ [ 'lineinfo' ],
                  \ [ 'percent' ],
                  \ [ 'filetype' ],
                  \ [ 'gitstatus'],
                  \]



let g:lightline.inactive = {}
let g:lightline.inactive.left = [ [ 'filename' ] ]
let g:lightline.inactive.right = [ ['lineinfo'], ['percent']]



let g:lightline.component_function={
                  \ 'gitbranch': 'LightlineFugitive',
                  \ 'pyenv':'PyEnv',
                  \ 'session':'MySession',
                  \ 'readonly' : 'LightlineReadonly',
                  \ 'method' : 'NearestMethodOrFunction',
                  \ 'fileformat' : 'MyFileformat',
                  \ 'filename' : 'MyFilename',
                  \ 'gitstatus' : 'GitStatus',
                  \ }

let g:lightline.component={'lineinfo': ' %3l:%-2v', }
let g:lightline.separator={ 'left': '', 'right': '' }
let g:lightline.subseparator={ 'left': '', 'right': '' }


function! LightlineReadonly() abort 
  return &readonly ? '' : '' 
endfunction 
function! LightlineFugitive() abort 
  if exists('*FugitiveHead') 
    let branch = FugitiveHead() 
    return branch !=# '' ? ' '.branch : '' 
  endif 
  return '' 
endfunction

" function! GitStatus() abort
"   let [a,m,r] = GitGutterGetHunkSummary()
"   return printf('+%d ~%d -%d', a, m, r)
" endfunction

function! PyEnv()  abort
  if exists('*virtualenv#statusline') 
    let env=virtualenv#statusline()
    return env !=# '' ? '🐍  '.env : '' 
  endif 
  return '' 
endfunction 


function! MySession() abort
  if exists('*xolox#session#find_current_session') 
    let session=xolox#session#find_current_session()
    return session !=# '' ? ' '.session : '' 
  endif 
  return '' 
endfunction 

function! NearestMethodOrFunction() abort
  let method = get(b:, 'vista_nearest_method_or_function', '')
  return method !=# '' ? ' '.method : ''
endfunction
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

function! MyFiletype() abort
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat() abort
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! MyFilename() abort
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    let path =  path[len(root)+1:]
  endif
  return winwidth(0) > 70 ? (WebDevIconsGetFileTypeSymbol() . path) : ''
endfunction

let g:lightline.mode_map={
      \ 'c' : 'CMD',
      \ 'n' : 'NOR',
      \ 'i' : 'INS',
      \ 'R' : 'REP',
      \ 'v' : 'VIS',
      \ 'V' : 'VLIN',
      \}

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


