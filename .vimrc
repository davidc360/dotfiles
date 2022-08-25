syntax on
set t_Co=256
set cursorline

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
set number " line number
set nowrap
set smartcase
set nobackup
set undodir=!/.vim/undodir
set undofile
set incsearch

"set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'preservim/nerdtree'
Plug 'wincent/terminus'
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme onehalfdark

"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"
"set ttimeout
"set ttimeoutlen=1
"set ttyfast
