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
Plug 'vim-airline/vim-airline-themes' " Tabline (themes)
Plug 'valloric/youcompleteme' "Code completion
Plug 'chriskempson/base16-vim' " Color schemes
Plug 'airblade/vim-gitgutter' " Git diff
Plug 'benmills/vimux' "Interaction with Tmux
Plug 'honza/vim-snippets' " Snippets
Plug 'editorconfig/editorconfig-vim' " Configuration
Plug 'junegunn/vim-easy-align' " Alignment
Plug 'nathanaelkane/vim-indent-guides' " Visually display indent levels
Plug 'townk/vim-autoclose' " Auto-closing
Plug 'amirh/html-autoclosetag' " Auto-close HTML tags


call plug#end()

" Indent settings
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
let g:indent_guides_enable_on_vim_startup = 1
autocmd FileType html,css,sass,scss,javascript setlocal sw=2 sts=2
autocmd FileType yaml setlocal sw=2 sts=2

" File settings
set encoding=utf-8

" If terminal supports colorschemes, enable them.
if &t_Co > 2 || has("gui_running")
    syntax on
    set colorcolumn=80
    silent! color base16-solarized
    set background=dark
endif

" Line numbers
set number
set relativenumber
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>i

" vim-gutter
highlight GitGutterAdd ctermbg=green ctermfg=green
highlight GitGutterRemove ctermbg=red ctermfg=red
highlight GitGutterChange ctermbg=cyan ctermfg=cyan

" NERDTree
map <Leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=20

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki'}]

" vim-airline
let g:airline_theme='base16_solarized'