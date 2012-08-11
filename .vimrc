syntax on
set dir=/var/tmp/vimswp
set expandtab
set shiftwidth=4
set tabstop=4
set number
filetype plugin indent on
colorscheme bensday 
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
nnoremap <F3> :w<CR>:!git diff %<CR>:! git commit %<CR>
nnoremap <F4> :w<CR>:!coffee --compile --output js/ coffee/<CR>
