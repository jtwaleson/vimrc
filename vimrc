set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'posva/vim-vue'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" END VUNDLE

syntax on

" No swap files next to original file
set dir=~/.cache/vim-swap

set autoindent
set smartindent
set cindent
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
au BufNewFile,BufRead *.md set filetype=markdown

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['flake8']
let g:syntastic_javascript_checkers = ['jshint']

let g:airline#extensions#syntastic#enabled=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:aurline_enable_fugitive=1
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'





colorscheme Tomorrow-Night-Eighties
let g:airline_theme='simple'

nnoremap <F2> :set nonumber!<CR>

set pastetoggle=<F12>
nnoremap <F12> :set invpaste paste?<CR>

if has('persistent_undo')
    set undofile
    set undodir=~/.cache/vim-undo
    set undolevels=1000
    set undoreload=10000
endif

highlight ExtraWhitespace ctermbg=red guibg=red ctermfg=white
match ExtraWhitespace /\s\+$\| \+\ze\t\| [^\t]\zs\t\+\| ^\t*\zs \+\|\t/
set exrc
set secure
