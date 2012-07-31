setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal nowrap
setlocal foldmethod=indent
setlocal foldopen+=jump
setlocal formatoptions+=c
setlocal formatoptions+=r
let g:pydiction_location = '~/.vim/ftplugin/pydiction/complete-dict'
setlocal background=dark
nnoremap <F5> :!pyflakes %<CR>
nnoremap <F6> :!pep8 %<CR>
nnoremap <F7> :!pylint %<CR>
highlight OverLength ctermbg=red ctermfg=white guibg=red
match OverLength /\%80v.\+/
