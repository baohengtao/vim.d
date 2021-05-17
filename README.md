```zsh
gh repo clone baohengtao/vim.d $XDG_CONFIG_HOME/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -fLo $XDG_CONFIG_HOME/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd && ln $XDG_CONFIG_HOME/nvim/init.vim .vimrc

```
