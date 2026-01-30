" My .vimrc
" Automatically install vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
 silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 autocmd VimEnter * PlugInstall 
 autocmd VimEnter * PlugInstall | source $MYVIMRC 
endif
""""""""""""""""""""""""""""""""""""""""""""""""

" Settings
set showmode
set incsearch
set nu
set rnu
set so=0
set nowrap
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'

call plug#end()

" Key remaps
let mapleader=" "

" Comment lines
map <leader>/ gcc

" Toggle file explorer
nmap <leader>t :NERDTreeToggle<cr>

" Autoinstall missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
let mapleader = " "
