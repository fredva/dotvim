" Install pathogen
execute pathogen#infect()

" Default indent settings
set expandtab     " Expand tabs to spaces
set shiftwidth=4  " No. spaces for auto indent
set softtabstop=4 " No. of spaces for <Tab>

" Enable file type detection
filetype plugin indent on

" Syntax highlighting
syntax on

" Background and color
set background=light
colorscheme solarized

" Turn off swapfiles
set noswapfile

" Turn off undofile
set noundofile

" Turn off backup
set nobackup
set nowritebackup

" Set encoding
set encoding=utf8

" Incremental search
set incsearch

" Proper case-insensitive search
set ignorecase
set smartcase

" Line numbers
"set nu
set relativenumber "relative, not absolute

" Ruler
set ruler

" No. lines above/below cursor when scrolling
set scrolloff=3

" Backspacing in insert mode
set backspace=indent,eol,start

" Show trailing spaces
set list
set listchars=trail:·

" Mouse in all modes
set mouse=a 

" Font for GVIM
set guifont=Consolas:h12:cANSI

" Auto chdir to dir of file in buffer
set autochdir

" Always refresh files
set autoread

" remap jj to esc
inoremap jj <ESC>
