
Plug 'lifepillar/vim-mucomplete' " complete
Plug 'preservim/tagbar' " ctags
Plug 'xolox/vim-easytags' " ctags

if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
