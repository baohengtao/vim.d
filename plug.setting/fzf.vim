
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

if has('nvim')
  runtime plug.setting/fasd.nvim
else
  runtime plug.setting/fasd.vim
endif
