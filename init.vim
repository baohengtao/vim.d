set runtimepath+=$XDG_CONFIG_HOME/nvim
runtime env.vim
runtime basic.vim
runtime plugin.vim
runtime custom.vim
runtime color.vim
runtime ftp.vim
runtime keymap.vim
runtime keymap_plug.vim
runtime completion.vim
echom "Hi~ (>^.^<)"

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/htao/Cooper/code/project/codproj'
    VirtualEnvActivate torch-pip 
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
