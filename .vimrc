syntax on

" No swap files next to original file
set dir=/var/tmp/vimswp

set expandtab
set shiftwidth=4
set tabstop=4
set number
set incsearch
set t_Co=256
set laststatus=2
set cursorline
set background=dark
set mouse=a
set mousehide
set history=10000
set showmatch
filetype plugin indent on

colorscheme Tomorrow-Night-Eighties

nnoremap <F2> :set nonumber!<CR>
vnoremap < <gv
vnoremap > >gv

set pastetoggle=<F12>
nnoremap <F12> :set invpaste paste?<CR>

let mapleader=','
map <leader>= <C-W>=
map <leader>gd :Gdiff<CR>
map <leader>gb :Gblame<CR>
map <leader>gc :Gcommit<CR>
map <leader>gs :Gstatus<CR>
map <leader>gr :Gremove<CR>
map <leader>gw :Gwrite<CR>

execute pathogen#infect()
let g:airline_enable_syntastic=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:aurline_enable_fugitive=1
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

if has('persistent_undo')
    set undofile
    set undodir=~/.cache/vim-undo
    set undolevels=1000
    set undoreload=10000
endif


highlight ExtraWhitespace ctermbg=red guibg=red ctermfg=white
match ExtraWhitespace /\s\+$\| \+\ze\t\| [^\t]\zs\t\+\| ^\t*\zs \+/
