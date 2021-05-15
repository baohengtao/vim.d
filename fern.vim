
nmap <buffer>
  \ <Plug>(fern-action-expand)
  \ <Plug>(fern-action-expand:stay)


function! s:init_fern() abort
  nmap <buffer><expr>
    \ <Plug>(fern-my-open-expand-collapse)
    \ fern#smart#leaf(
    \ "\<Plug>(fern-action-open)",
    \ "\<Plug>(fern-action-expand:stay)",
    \ "\<Plug>(fern-action-collapse)",
    \)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> d <Plug>(fern-action-trash)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> M <Plug>(fern-action-rename)
  nmap <buffer> h <Plug>(fern-action-hidden-toggle)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> s <Plug>(fern-action-mark:toggle)
  nmap <buffer> o <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> ff <Plug>(fern-action-fzf-files)
  nmap <buffer> fd <Plug>(fern-action-fzf-dirs)
  nmap <buffer> A <Plug>(fern-action-fzf-both)
  nmap <buffer> c <Plug>(fern-action-tcd:cursor)
  nmap <buffer> < <Plug>(fern-action-leave)
  nmap <buffer> > <Plug>(fern-action-enter)
  nmap <buffer> q :<C-u>quit<CR>
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END





