
" fzf
let $FZF_DEFAULT_COMMAND="fd  --no-ignore-vcs "
let $FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border --multi --info=inline --exact'

let g:fzf_layout = { 'window': { 'width': 0.75, 'height': 0.75 } }
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" runtime 'plug.setting/fzf.vim'
nnoremap <leader>f :History<CR>
nnoremap <leader>r :History:<CR>
nnoremap <leader>p :Commands<CR>


function! s:fasd_update() abort
  if empty(&buftype) || &filetype ==# 'dirvish'
    if has('nvim')
      call jobstart()
    else
      call job_start(['fasd', '-A', expand('%:p')])
    endif
  endif
endfunction
augroup fasd
  autocmd!
  autocmd BufWinEnter,BufFilePost * call s:fasd_update()
augroup END
command! FASD call fzf#run(fzf#wrap({'source': 'fasd -al', 'options': '--no-sort --tac --tiebreak=index'}))
nnoremap <silent> <Leader>e :FASD<CR>

