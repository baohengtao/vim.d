call plug#begin('~/.plugin/vimplug')
Plug 'VundleVim/Vundle.vim'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'chr4/nginx.vim'
Plug 'preservim/nerdcommenter'
Plug 'jszakmeister/vim-togglecursor'
Plug 'ryanoasis/vim-devicons'
"Plug 'liuchengxu/vim-which-key'
call plug#end()

