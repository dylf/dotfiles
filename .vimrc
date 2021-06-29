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

let mapleader=" "

set showmode
set incsearch
set nu
set rnu
set so=0
set nowrap
set timeoutlen

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'

call plug#end()

" Comment lines
map <leader>/ gcc

" Toggle file explorer
nmap <leader>t :NERDTreeToggle<cr>

" Autoinstall missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
