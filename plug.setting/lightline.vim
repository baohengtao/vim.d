let g:lightline={}
let g:lightline.colorscheme='dracula'

let g:lightline.active={}
let g:lightline.active.left=[
      \ ['mode', 'paste'],
      \ ['gitbranch', 'pyenv', 'session', 'readonly', 'filename', 'modified']]
let g:lightline.active.right=[
                  \ [ 'lineinfo' ],
                  \ [ 'percent' ],
                  \ [ 'fileformat', 'fileencoding', 'filetype' ]]

let g:lightline.inactive = {}
let g:lightline.inactive.left = [ [ 'filename' ] ]
let g:lightline.inactive.right = [ ['lineinfo'], ['percent']]



let g:lightline.component_function={
                  \ 'gitbranch': 'LightlineFugitive',
                  \ 'pyenv':'PyEnv',
                  \ 'session':'MySession',
                  \ 'readonly' : 'LightlineReadonly',}

let g:lightline.component={'lineinfo': ' %3l:%-2v'}
let g:lightline.separator={ 'left': '', 'right': '' }
let g:lightline.subseparator={ 'left': '', 'right': '' }

function! LightlineReadonly() 
  return &readonly ? '' : '' 
endfunction 
function! LightlineFugitive() 
  if exists('*FugitiveHead') 
    let branch = FugitiveHead() 
    return branch !=# '' ? ' '.branch : '' 
  endif 
  return '' 
endfunction

function! PyEnv() 
  if exists('*virtualenv#statusline') 
    let env=virtualenv#statusline()
    return env !=# '' ? '🐍  '.env: '' 
  endif 
  return '' 
endfunction 


function! MySession() 
  if exists('*xolox#session#find_current_session') 
    let session=xolox#session#find_current_session()
    return session !=# '' ? ' '.session: '' 
  endif 
  return '' 
endfunction 


let g:lightline.mode_map={
      \ 'c' : 'CMD',
      \ 'n' : 'NOR',
      \ 'i' : 'INS',
      \ 'R' : 'REP',
      \ 'v' : 'VIS',
      \ 'V' : 'VLIN',
      \}
