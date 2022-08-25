syntax on
set cursorline
let mapleader = " "

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number " show line number
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=!/.vim/undodir
set undofile
set incsearch

set colorcolumn=80

call plug#begin('~/.config/nvim/plugged')

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'andymass/vim-visput'

call plug#end()

nmap s <Plug>(easymotion-s2)

colorscheme onehalfdark

set mouse=nv
let g:NERDTreeMouseMode=3

" RC command opens up neovim config file
command! RC :e $MYVIMRC
command! Hyper :e ~/.hyper.js
" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" Open nerdtree on Vim startup
" autocmd VimEnter * NERDTreDTree   

" key maps
nnoremap <C-f> :NERDTreeToggle<Cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader>c "*y
