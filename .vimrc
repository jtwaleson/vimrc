syntax on
set dir=/var/tmp/vimswp
set expandtab
set shiftwidth=4
set tabstop=4
set number
filetype plugin indent on
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
nnoremap <F3> :w<CR>:!git diff %<CR>:! git commit %<CR>
nnoremap <F4> :w<CR>:!coffee --compile --output js/ coffee/<CR>
set t_Co=256
colorscheme Tomorrow-Night-Eighties



"hexmode?
" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction
