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

" Line numbers
set nu

" Ruler
set ruler

" Mouse in all modes
set mouse=a 

" Font for GVIM
set guifont=Consolas:h12:cANSI

" Auto chdir to dir of file in buffer
set autochdir

" Always refresh files
set autoread
