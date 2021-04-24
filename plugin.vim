call plug#begin('~/.plugin/vimplug')

"file
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'



"program language
Plug 'preservim/nerdcommenter'
Plug 'chr4/nginx.vim'

"beauty
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'name': 'dracula' }


call plug#end()

