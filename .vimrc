call pathogen#infect() 
syntax on
set dir=/var/tmp/vimswp
set expandtab
set shiftwidth=4
set tabstop=4
set number
set incsearch
filetype plugin indent on
nnoremap <F5> :setlocal spell! spelllang=en_gb<CR>
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
nnoremap <F3> :w<CR>:!git diff %<CR>:! git commit %<CR>
nnoremap <F4> :w<CR>:!coffee --compile --output js/ coffee/<CR>
set t_Co=256
colorscheme Tomorrow-Night-Eighties

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000



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

au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()
function! DistractionFreeWriting()
    colorscheme iawriter
    set background=light
    set gfn=Cousine:h14                " font to use
    set lines=40 columns=100           " size of the editable area
    set guioptions-=r                  " remove right scrollbar
    set laststatus=0                   " don't show status line
    set noruler                        " don't show ruler
    set nonumber
    set linebreak                      " break the lines on words
endfunction


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open=0
let g:syntastic_auto_loc_list=0
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['javascript', 'python'],
                            \ 'passive_filetypes': ['puppet'] }
