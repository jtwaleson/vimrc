syntax on

" No swap files next to original file
set dir=~/.cache/vim-swap

set expandtab
set shiftwidth=4
set tabstop=4
set number
set incsearch
set t_Co=256
set laststatus=2
set cursorline
set background=dark
set mousehide
set history=10000
set showmatch
set fileformat=unix
set autoindent
filetype plugin indent on
au BufNewFile,BufRead *.md set filetype=markdown

colorscheme Tomorrow-Night-Eighties

nnoremap <F2> :set nonumber!<CR>

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
map <leader>gn :GitGutterNextHunk<CR>
map <leader>gp :GitGutterPrevHunk<CR>
map <leader>w <C-W><C-O>
map <leader>p :CtrlPBuffer<CR>
map <leader>u :UndotreeToggle<CR>
map <leader>e :SyntasticCheck<CR>:Errors<CR><C-W>j
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>l <C-W>l

execute pathogen#infect()
let g:airline_enable_syntastic=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:aurline_enable_fugitive=1
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

let g:syntastic_check_on_open=1
let g:syntastic_python_checkers=['flake8']
let g:syntastic_javascript_checkers = ['jshint']

if has('persistent_undo')
    set undofile
    set undodir=~/.cache/vim-undo
    set undolevels=1000
    set undoreload=10000
endif

highlight ExtraWhitespace ctermbg=red guibg=red ctermfg=white
match ExtraWhitespace /\s\+$\| \+\ze\t\| [^\t]\zs\t\+\| ^\t*\zs \+\|\t/
