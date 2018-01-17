" Install vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
    silent !curl -fLso ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
end

" Plugins
call plug#begin("~/.config/nvim/plugged/")

Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'scrooloose/nerdtree' " Tree explorer
Plug 'scrooloose/syntastic' " Syntax checking
Plug 'tpope/vim-surround' " Parentizing and quoting
Plug 'bling/vim-airline' " Tabline
Plug 'valloric/youcompleteme' "Code completion
Plug 'flazz/vim-colorschemes' " Color schemes
Plug 'airblade/vim-gitgutter' " Git diff
Plug 'benmills/vimux' "Interaction with Tmux
Plug 'honza/vim-snippets' " Snippets
Plug 'Shougo/denite.nvim' " Interfaces uniting