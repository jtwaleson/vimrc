call pathogen#infect() 
syntax on

" No swap files next to original file
set dir=/var/tmp/vimswp

set expandtab
set shiftwidth=4
set tabstop=4
set number
set incsearch
set t_Co=256
filetype plugin indent on

colorscheme Tomorrow-Night-Eighties

nnoremap <F2> :set nonumber!<CR>
