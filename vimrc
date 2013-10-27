" Initialize the pathogen plugin
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" Solarized color scheme
syntax enable
set background=dark
colorscheme solarized

" Tabbing settings
set tabstop=2 " Number of spaces for each <Tab> character
set softtabstop=2
set expandtab " Expand tabs to spaces

" Set backup settings 
set backup
set backupdir=~/.vim/backup " Directory for backup files
set directory=~/.vim/tmp    " Directory for swap files

" Show line numbers
set number

" Set font for GUI mode
set guifont=Anonymous\ Pro:h16
