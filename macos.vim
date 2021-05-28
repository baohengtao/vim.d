
let g:python3_host_prog = '/Users/htao/.local/workon/nvim/bin/python'
let g:coc_node_path = $HOME . '/.local/n/bin/node'

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/htao/Cooper/code/project/codproj'
    VirtualEnvActivate torch-pip 
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
